module Components::ComboboxHelper
  def render_combobox(items, data = {}, &block)
    content = capture(&block) if block
    render "components/ui/combobox", items:, content:, data:
  end

  def combobox_trigger(&block)
    content_for :trigger, capture(&block) if block
  end
end
