class UploadedFile < ActiveRecord::Base
  belongs_to :collection
  attachment :attach_file
end
