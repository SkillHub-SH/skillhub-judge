class AddStatusToJobApplication < ActiveRecord::Migration[6.1]
  def change
    add_column :job_applications, :status, :string, default: 'submitted'
  end
end
