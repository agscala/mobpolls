class AddOptionsRenameTextColumn < ActiveRecord::Migration
  def self.up
    add_column :questions, :comments_enabled, :boolean, :default => 0
    rename_column :questions, :question, :text
  end

  def self.down
    remove_column :questions, :comments_enabled
    rename_column :questions, :text, :question
  end
end
