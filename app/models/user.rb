class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :role
end
