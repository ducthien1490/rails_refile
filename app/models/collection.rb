class Collection < ActiveRecord::Base
  has_many :uploaded_files, dependent: :destroy

  accepts_attachments_for :uploaded_files, attachment: :attach_file, append: true
end
