class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :image_url
      t.string :county
      t.text :description
      t.text :address
      t.text :days_and_times
      t.decimal :price_per_class, precision: 8, scale: 2
      t.string :email
      t.string :contact_person
      t.string :contact_no

      t.timestamps
    end
  end
end
