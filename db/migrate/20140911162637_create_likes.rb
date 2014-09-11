class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :ip_address
      t.string :article_id

      t.timestamps
    end
  end
end
