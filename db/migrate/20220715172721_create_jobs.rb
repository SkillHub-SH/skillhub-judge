class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :requirements, null: false
      t.belongs_to :company
      t.timestamps
    end
  end
end
