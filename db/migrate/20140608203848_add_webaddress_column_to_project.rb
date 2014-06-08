class AddWebaddressColumnToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :siteurl, :string
  end
end
