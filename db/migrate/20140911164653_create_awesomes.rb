class CreateAwesomes < ActiveRecord::Migration
  def change
    create_table :awesomes do |t|
      t.string :ip_address
      t.string :article_id

      t.timestamps
    end
  end
end
