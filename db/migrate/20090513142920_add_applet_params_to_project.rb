class AddAppletParamsToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :applet_code, :string
    add_column :projects, :applet_width, :integer
    add_column :projects, :applet_height, :integer
  end

  def self.down
    remove_column :projects, :applet_height
    remove_column :projects, :applet_width
    remove_column :projects, :applet_code
  end
end
