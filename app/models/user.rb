class User < ActiveRecord::Base
  validates_presence_of :screen_name, :e_mail, :password
  validates_uniqueness_of :screen_name
  validates_uniqueness_of :e_mail, :case_sensitive => false
  validates_length_of :screen_name, :within => 6..30
  validates_length_of :e_mail, :within => 6..50
  validates_length_of :password, :within => 6..30
  validates_confirmation_of:password, :within => 6..30
end
