class Basket < ActiveRecord::Base
  belongs_to :user
  belongs_to :phone
end
