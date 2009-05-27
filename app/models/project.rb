class Project < ActiveRecord::Base
  has_attached_file :image
  has_attached_file :applet
  
  belongs_to :user
end
