# frozen_string_literal: true

class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    if params[:query].present?
      contest = Contest.find_by(code: params[:query].strip)

      return redirect_to candidates_path, alert: 'Concurso nao encontrado, tente novamente.' unless contest.present?

      @candidates = @candidates.search_by_contest_code(contest)
    end
    @candidates = @candidates.page(params[:page]).per(7)
  end
end
