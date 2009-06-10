class AddJarToLibraries < ActiveRecord::Migration
  def self.up
    add_column :libraries, :jar_file_name, :string
    add_column :libraries, :jar_content_type, :string
    add_column :libraries, :jar_file_size, :integer
  end

  def self.down
    remove_column :libraries, :jar_file_name
    remove_column :libraries, :jar_content_type
    remove_column :libraries, :jar_file_size
  end
end
