class Enquiry < ActiveRecord::Base
    
  validates :first, :presence => { :message => "cannot be blank ..."}
  
  validates :surname, :presence => { :message => "cannot be blank ..."}
  
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :description, :presence => { :message => "cannot be blank ..."}
  validates :description, :length => {:maximum => 2000, :message => "Description: maximum length 2000 characters"}

  
  validates :telephone, :presence => {:message => "cannot be blank ..."},
                     :numericality => true,
                     :length => { :minimum => 11, :maximum => 11 }
  
end
