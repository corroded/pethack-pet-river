# frozen_string_literal: true

class Pet < ApplicationRecord
  belongs_to :human, class_name: 'User', foreign_key: 'human_id'

  delegate :phone_number, to: :human, prefix: false, allow_nil: false
end
