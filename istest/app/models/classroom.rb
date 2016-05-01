class Classroom < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  before_save { entry_at = DateTime.now }
end
