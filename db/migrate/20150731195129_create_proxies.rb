class CreateProxies < ActiveRecord::Migration
  def change
    create_table :proxies do |t|
      t.boolean :good
      t.string :ip
      t.integer :port
      t.string :host
      t.string :country
      t.integer :lastspeed
      t.datetime :lastused_at
      t.datetime :changed_at

      t.timestamps null: false
    end
  end
end
