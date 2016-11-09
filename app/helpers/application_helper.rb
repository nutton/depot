module ApplicationHelper
  def title_content
    content_for(:title) || ""
  end
end
