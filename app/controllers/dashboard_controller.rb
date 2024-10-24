# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    @contests = Contest.page(params[:page]).per(5)
  end
end
