class Phone < ActiveRecord::Base
  belongs_to :product
  has_many :baskets, dependent: :destroy
  has_many :orders, dependent: :destroy
end
