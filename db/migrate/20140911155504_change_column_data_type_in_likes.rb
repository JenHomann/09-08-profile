class ChangeColumnDataTypeInLikes < ActiveRecord::Migration
  def up
    change_column :likes, :article_id, :string
  end

  def down
    change_column :likes, :article_id, :integer
  end
end
