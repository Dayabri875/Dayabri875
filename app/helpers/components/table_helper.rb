# frozen_string_literal: true

module Components
  module TableHelper
    def render_table(caption = nil, **options, &block)
      content_tag :table, options.reverse_merge(
        class: tw('table-auto w-full text-sm border-b border-[#C3C3C3]', options[:class])
      ) do
        if caption.present?
          content_tag :caption, caption, class: 'mt-4 text-sm text-muted-foreground ' do
            capture(&block)
          end
        else
          capture(&block)
        end
      end
    end

    def table_head(**options, &block)
      content_tag :thead, options.reverse_merge(
        class: tw('[&_tr]:border-b border-[#C3C3C3]', options[:class])
      ) do
        content_tag :tr,
                    class: 'border-b border-[#C3C3C3] transition-colors hover:bg-muted/50 data-[state=selected]:bg-muted uppercase' do
          capture(&block)
        end
      end
    end

    def table_header(content = nil, **options, &block)
      content_tag :th, options.reverse_merge(
        class: tw('h-12 px-4 text-left align-middle font-medium [&:has([role=checkbox])]:pr-0 font-bold', options[:class])
      ) do
        if block
          capture(&block)
        else
          content
        end
      end
    end

    def table_body(**options, &)
      content_tag(:tbody, class: options.reverse_merge(
        class: tw('[&_tr:last-child]:border-0', options[:class])
      ), &)
    end

    def table_row(**options, &)
      content_tag(:tr, options.reverse_merge(
                         class: tw('border-b border-[#C3C3C3] transition-colors hover:bg-muted/50 data-[state=selected]:bg-muted', options[:class])
                       ), &)
    end

    def table_column(content = nil, **options, &block)
      content_tag :td, options.reverse_merge(
        class: tw('p-4 align-middle [&:has([role=checkbox])]:pr-0 font-medium', options[:class])
      ) do
        if block
          capture(&block)
        else
          content
        end
      end
    end
  end
end
