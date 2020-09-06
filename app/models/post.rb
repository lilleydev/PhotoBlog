class Post < ActiveRecord::Base
  resourcify
  belongs_to :user
  include Authority::Abilities
end
