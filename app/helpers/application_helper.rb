module ApplicationHelper
  def markdown(text)
    render = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)

        options={
          autolink: true,
          no_intra_emphasis: true,
          fenced_code_blocks: true,
          lax_htm_blocks: true

        }

        Redcarpet::Markdown.new(render,options).render(text).html_safe
  end
end
