class Post < ActiveRecord::Base
  resourcify
  belongs_to :author, class_name: 'User'
  include Authority::Abilities
end
