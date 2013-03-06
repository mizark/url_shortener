class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :long_url
      t.string :short_url
      t.integer :http_status

      t.timestamps
    end
    add_index :links, :long_url
    add_index :links, :short_url
    add_index :links, [:long_url, :short_url]
  end
end
