class AddStudyAtAndWorkedAtToDeveloper < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :work_at, :string
    add_column :developers, :study_at, :string
    add_column :developers, :current_position, :string
  end
end
