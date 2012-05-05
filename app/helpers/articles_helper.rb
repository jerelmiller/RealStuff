module ArticlesHelper
  def more_link(h)
    if !h.body.nil? and h.body.length > 80
      link_to_function("Read More", nil, :id => "1") do |page|
        page["article#{h.id}"].replace_html "#{simple_format(h.body)}"
        page.insert_html :after, "more#{h.id}", "<div class='less' id='less#{h.id}'>#{less_link(h)}</div>"
        page.hide "more#{h.id}"
      end
    end
  end

  def less_link(h)
    link_to_function("Less", nil, :id => "1") do |page|
      page["article#{h.id}"].replace_html "#{truncate(h.body, :length => 80, :omission => '... (continued)')}"
      page.show "more#{h.id}"
      page.hide "less#{h.id}"
    end
  end
end
