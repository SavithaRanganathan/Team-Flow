class Mock < ActiveRecord::Base
  belongs_to :project
  belongs_to :requirement
end
