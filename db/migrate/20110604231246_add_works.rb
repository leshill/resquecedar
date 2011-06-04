class AddWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :description
      t.datetime :started_at
      t.datetime :completed_at
      t.text :env
    end
  end

  def self.down
    drop_table :works
  end
end
