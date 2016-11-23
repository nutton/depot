class Item < ApplicationRecord
  belongs_to :configuration
  state_machine :initial => :unknown, :attribute => :state_value do
    event :apply_to_store do
      transition [:unknown,:repair,:site] => :store
    end
    event :apply_to_site do
      transition :store => :site
    end
    event :apply_to_recycle do
      transition [:store,:repair] => :recycle
    end
    event :apply_to_repair do
      transition :store => :repair
    end
  end
end
