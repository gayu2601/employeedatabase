class College < ActiveRecord::Base
  belongs_to :university, :foreign_key => :university_id
end
