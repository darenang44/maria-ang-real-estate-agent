class Listing < ApplicationRecord
  belongs_to :user
  def to_param
    address
  end

  def self.search(param)
    return Listing.none if param.blank?

    param.strip!
    param.downcase!
    address_matches(param).uniq
  end

  def self.address_matches(param)
    matches('address', param)
  end

  def self.matches(field_name, param)
    # "%#{param}%" - % is a wildcard saying that the search doeant have to be an exact match
    where("lower(#{field_name}) like ?", "%#{param}%")
  end
  
end
