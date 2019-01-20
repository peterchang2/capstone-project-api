# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :favorites
  has_many :whiskeys, through: :favorites

  validates :password, length: { minimum: 1, maximum: 20 }
end
