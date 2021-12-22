# frozen_string_literal: true

class TodoItem < ApplicationRecord
  validates :body, presence: true
  belongs_to :list
end
