class Tutor < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy
  has_one_attached :image, dependent: :destroy

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
