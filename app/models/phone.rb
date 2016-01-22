class Phone < ActiveRecord::Base
  belongs_to :product
  has_many :baskets, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
