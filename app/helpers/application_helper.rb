module ApplicationHelper
  def markdown_text(object)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, filter_html: true, no_images: true, no_styles: true, safe_links_only: true, with_toc_data: true, prettify: true, hard_wrap: true)

    (markdown.render object).html_safe
  end
end
