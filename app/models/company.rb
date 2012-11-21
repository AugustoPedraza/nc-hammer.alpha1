class Company < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :users

  def self.find_or_create(name)    
    where('name = ?', name).first || create!(name: name)
  end
end