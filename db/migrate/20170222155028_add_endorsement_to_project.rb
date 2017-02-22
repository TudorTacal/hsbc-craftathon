class AddEndorsementToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :endorsement, :integer, default: 0
  end
end
