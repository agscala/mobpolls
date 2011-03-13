class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.references :question
      t.string :text
    end
  end

  def self.down
    drop_table :responses
  end
end
