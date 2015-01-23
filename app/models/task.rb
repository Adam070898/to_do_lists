require_relative '../../db/config'

class Task < ActiveRecord::Base
  has_many :users
  has_many :lists, through: :users
end

class List < ActiveRecord::Base
  belongs_to :users
  belongs_to :tasks
end

class User < ActiveRecord::Base
  has_many :lists
  has_many :tasks, through: :lists
end