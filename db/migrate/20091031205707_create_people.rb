class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string  :nickname
      t.integer :avatar

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
