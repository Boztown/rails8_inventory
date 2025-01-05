class Item < ApplicationRecord
  belongs_to :account
  validates :name, presence: true

  has_one_attached :photo
  attr_accessor :remove_photo
end
