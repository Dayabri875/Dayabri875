# frozen_string_literal: true

class Candidate < ApplicationRecord
  has_and_belongs_to_many :professions

  scope :search_by_contest_code, lambda { |contest|
    profession_ids = contest.professions.ids

    left_joins(:professions).where('candidates.professions': profession_ids)
  }
end
