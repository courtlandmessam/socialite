class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  acts_as_voteable


  validates :image, presence: true

  has_attached_file :image, styles: { :small  => "150x150>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
