class UploadedFiles < ActiveRecord::Migration
  def change
    create_table :uploaded_files do |t|
      t.references :collection
      t.text       :caption
      t.string     :attach_file
      t.integer    :size

      t.timestamps null: false
    end
  end
end
