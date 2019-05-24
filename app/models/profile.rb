class Profile < ActiveRecord::Base
 belongs_to :user, required: false
end
