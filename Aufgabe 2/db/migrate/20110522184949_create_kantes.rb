class CreateKantes < ActiveRecord::Migration
  def self.up
    create_table :kantes do |t|
      t.integer :knoten1_id
      t.integer :knoten2_id
      t.integer :laenge

      t.timestamps
    end
  end

  def self.down
    drop_table :kantes
  end
end
