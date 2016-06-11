class ChangeTitleToUrl < ActiveRecord::Migration
  def change
    rename_column :messages, :title, :url
  end
end
