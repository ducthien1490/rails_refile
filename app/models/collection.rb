class Collection < ActiveRecord::Base
  has_many :uploaded_files, dependent: :destroy

  accepts_nested_attributes_for :uploaded_files, reject_if: :empty_attach

  def empty_attach(attrs)
    attrs[:attach_file].blank? && attrs[:id].blank?
  end
end
