class Listing < ApplicationRecord
  belongs_to :user
  def to_param
    address
  end
end
