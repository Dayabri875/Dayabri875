# frozen_string_literal: true

namespace :db do
  namespace :reset do
    task seed: ['db:drop', 'db:create', 'db:migrate', 'db:seed']
  end
end
