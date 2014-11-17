class Startup < ActiveRecord::Base
  attr_accessible :contact_name, :country, :email, :industry, :startup_name, :tribe, :generation
end
