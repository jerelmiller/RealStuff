class Product < ActiveRecord::Base

  has_many :flavors
  has_many :sizes

  attr_accessible :name, :price

  validates_presence_of :name
  validates :price, :numericality => true

  def get_flavors
    Flavor.find(:all, :conditions => {:product_id => self.id})
  end

  def to_s
    self.name
  end


  protected

    def validate
      errors.add(:price, 'must be greater than 0') unless self.price > 0.0
    end

end
