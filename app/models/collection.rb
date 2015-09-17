class Collection < ActiveRecord::Base
  has_many :uploaded_files, dependent: :destroy

  accepts_nested_attributes_for :uploaded_files, allow_destroy: :true,
    reject_if: ->file{file[:attach_file].blank?}
end
