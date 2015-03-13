class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :first
      t.string :surname
      t.string :email
      t.string :telephone

      t.timestamps null: false
    end
  end
end
