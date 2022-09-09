class CreateJobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do |t|
      t.belongs_to :developer
      t.belongs_to :company
      t.belongs_to :job
      t.timestamps
    end
  end
end
