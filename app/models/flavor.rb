class Flavor < ActiveRecord::Base

  belongs_to :product

  attr_accessible :name, :product_id, :feature_flavor

  validates_presence_of :name

  def to_s
    self.name
  end

  protected

end
