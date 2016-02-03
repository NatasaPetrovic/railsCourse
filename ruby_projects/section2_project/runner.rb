require 'pp' #pretty print, samo za style
require_relative 'user' #use the user class in this folder

user = User.new("mail@gmail.com", "Nata")

pp user # output the object

user.save