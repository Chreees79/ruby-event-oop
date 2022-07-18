require 'pry'

class User
  @@all_users = []
  attr_accessor :email, :age

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users.push(self)
  end

  def self.find_by_email(email)
    @@all_users.bsearch{|user| user.email == email}
  end

  def self.all
    return @@all_users
  end
end

