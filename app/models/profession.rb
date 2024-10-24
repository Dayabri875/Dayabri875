# frozen_string_literal: true

class Profession < ApplicationRecord
  has_and_belongs_to_many :candidates
  has_and_belongs_to_many :contests
end
