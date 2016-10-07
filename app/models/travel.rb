class Travel < ApplicationRecord
	has_attached_file :image1, styles: { medium: "640x480>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/
  has_attached_file :image2, styles: { medium: "640x480>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/
  has_attached_file :image3, styles: { medium: "640x480>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image3, content_type: /\Aimage\/.*\z/
  has_attached_file :image4, styles: { medium: "640x480>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image4, content_type: /\Aimage\/.*\z/
   extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :tcategory
end
