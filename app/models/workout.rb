class Workout < ActiveRecord::Base
  scope :focus, -> (type) { where(focus: type) }
end
