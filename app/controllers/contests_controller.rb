# frozen_string_literal: true

class ContestsController < ApplicationController
  def index
    @contests = Contest.all
    if params[:query].present?
      candidate = Candidate.find_by(identity: params[:query].strip)

      return redirect_to contests_path, alert: 'Candidato nao encontrado, tente novamente.' unless candidate.present?

      @contests = @contests.search_by_profile(candidate)
    end
    @contests = @contests.page(params[:page]).per(5)
    @contests
  end
end
