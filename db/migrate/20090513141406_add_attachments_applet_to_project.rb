class AddAttachmentsAppletToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :applet_file_name, :string
    add_column :projects, :applet_content_type, :string
    add_column :projects, :applet_file_size, :integer
  end

  def self.down
    remove_column :projects, :applet_file_name
    remove_column :projects, :applet_content_type
    remove_column :projects, :applet_file_size
  end
end
