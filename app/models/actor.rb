class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.each do |char|
      "#{char.name} - #{char.show.name}"
  end

  def say_that_thing_you_say
    "#{self.name} always says #{self.catchphrase}"
  end
end
