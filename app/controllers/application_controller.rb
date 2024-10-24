# frozen_string_literal: true

class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def layout_by_resource
    'application'
  end

  private

  def add_initial_breadcrumbs
    breadcrumbs.add 'Home', root_path
  end
end
