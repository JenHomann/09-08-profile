class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :string
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
