# frozen_string_literal: true

class Contest < ApplicationRecord
  has_and_belongs_to_many :professions

  scope :search_by_profile, lambda { |candidate|
    profession_ids = candidate.professions.ids

    left_joins(:professions).where('contests.professions': profession_ids)
  }
end
