class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :role
  has_many :events
  has_many :articles

  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end
