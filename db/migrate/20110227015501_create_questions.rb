class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.references :user
      t.string :question
      t.datetime :expiration

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
