# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :favorites
  has_many :wishes
  has_many :whiskeys, through: :favorites
  has_many :whiskeys, through: :wishes

  validates :password, length: { minimum: 1, maximum: 20 }
end
