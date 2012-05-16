class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :name
      t.string :type
      t.string :highlight
      t.string :title

      t.timestamps
    end
  end
end
