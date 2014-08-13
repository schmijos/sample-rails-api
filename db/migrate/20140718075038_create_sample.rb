class CreateSample < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.integer :sample

      t.timestamps
    end
  end
end
