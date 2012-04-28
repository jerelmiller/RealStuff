class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :email, :password
  
  belongs_to :role
  has_many :events
  has_many :articles

  validates :password, :confirmation => true, :presence => true, :on => :create
  validates :email, :presence => true, :uniqueness => true

  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end
