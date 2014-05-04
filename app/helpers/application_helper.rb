module ApplicationHelper
  def javascript(*files)
    content_for(:bottomjs) { javascript_include_tag(*files) }
  end
end
