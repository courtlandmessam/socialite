class Venue < ApplicationRecord
  # validate :image
  has_many :comments, dependent: :destroy
  belongs_to :user
  acts_as_voteable


  has_attached_file :image, styles: { small: "150x", medium: "828x315#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.search(search)
  	where("title LIKE ?", "%#{search}%") 
  end
end
