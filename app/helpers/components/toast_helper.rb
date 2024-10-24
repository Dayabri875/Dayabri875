module Components::ToastHelper
  def render_toast(header: nil, description: nil, action: nil, class: nil, data: {}, variant: :default, **options, &block)
    options[:class] ||= ""
    options[:class] << " destructive group border-destructive-foreground shadow-lg bg-destructive-foreground text-destructive " if variant == :destructive
    options[:class] << " success group border-success-foreground shadow-lg bg-success-foreground text-success " if variant == :success

    render "components/ui/toast", header:, description:, action:, class:, data:, options: options
  end
end
