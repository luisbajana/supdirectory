class Staff < ActiveRecord::Base
  attr_accessible :description, :email, :group, :name
end
