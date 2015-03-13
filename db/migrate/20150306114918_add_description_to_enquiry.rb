class AddDescriptionToEnquiry < ActiveRecord::Migration
  def up
    add_column :enquiries, :description, :text
  end
  
  def down
    remove_column :enquiries, :description
  end
end
