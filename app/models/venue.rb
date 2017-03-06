class Venue < ApplicationRecord
  # validate :image
  has_many :comments, dependent: :destroy
  belongs_to :user
  acts_as_votable

  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
