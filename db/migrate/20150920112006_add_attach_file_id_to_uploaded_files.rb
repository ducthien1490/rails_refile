class AddAttachFileIdToUploadedFiles < ActiveRecord::Migration
  def change
    add_column :uploaded_files, :attach_file_id, :string
  end
end
