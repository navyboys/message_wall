class AddUrlToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :title, :string
  end
end
