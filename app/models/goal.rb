class Goal < ActiveRecord::Base
  belongs_to :project
  belongs_to :requirement
end
