module Components::DropzoneHelper
  def render_dropzone(field: nil, name: nil, disabled: false, readonly: false, **options, &block)
    render "components/ui/dropzone", field:, name:, disabled:, readonly:, options:
  end
end
