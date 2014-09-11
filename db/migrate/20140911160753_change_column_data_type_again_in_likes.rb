class ChangeColumnDataTypeAgainInLikes < ActiveRecord::Migration
  def up
    change_column :likes, :article_id, :integer
  end

  def down
    change_column :likes, :article_id, :string
  end
end
