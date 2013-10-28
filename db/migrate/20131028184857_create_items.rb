class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :done, :default => false

      t.timestamps
    end
  end
end
