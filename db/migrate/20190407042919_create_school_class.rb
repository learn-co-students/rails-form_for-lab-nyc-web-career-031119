class CreateSchoolClass < ActiveRecord::Migration[5.0]
  def change
    create_table :school_classes do |t|
      t.string :title
      t.string :room_number

      t.timestamp
    end
  end
end
