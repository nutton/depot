module ApplicationHelper
  def title_content
    content_for(:title) || ""
  end
  def lwi(path,text,icon)
  	link_to path do 
  		t = content_tag :i, nil, :class => icon
  		t+' '+text
  	end
  end

  def menu_helper

  	if user_signed_in?
  	end
  end

end
