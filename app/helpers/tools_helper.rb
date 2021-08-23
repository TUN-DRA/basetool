module ToolsHelper
  def tool_lists(tools)
    html = ''
    tools.each do |tool|
      html += render(partial: 'tool',locals: { tool: tool })
    end
    return raw(html)
  end
end
