module ApplicationHelper
  def item_active?(item)
    /\/?#{item}(\/.*)?/ =~ request.fullpath
  end
  def menu_item(name, link)
    css = item_active?(link) ? 'item active' : 'item'
    content_tag :div, link_to(name, link), class: css
  end
end
