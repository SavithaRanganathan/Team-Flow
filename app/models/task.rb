class Task < ActiveRecord::Base
  belongs_to :requirement
  belongs_to :user
  belongs_to :user
end
