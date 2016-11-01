class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :activity, index: true
      t.references :member, index: true

      t.timestamps
    end
  end
end
