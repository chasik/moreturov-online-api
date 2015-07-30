class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :name
      t.string :nameeng
      t.string :url
      t.boolean :enabled, default: false

      t.timestamps null: false
    end
  end
end
