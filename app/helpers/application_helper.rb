# frozen_string_literal: true

module ApplicationHelper
  def monetize_default(field)
    field.present? && field.cents.positive? ? field : ''
  end

  def check_collapsible_open
    current_page?(suppliers_path) ||
      current_page?(clients_path) ||
      current_page?(products_path) ||
      current_page?(sellers_path) ||
      current_page?(carriers_path)
  end
end
