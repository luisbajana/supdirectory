class Contact < ActiveRecord::Base
  attr_accessible :description, :email, :industry, :name
end
