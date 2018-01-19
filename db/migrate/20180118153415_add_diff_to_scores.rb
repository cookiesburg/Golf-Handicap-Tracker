class AddDiffToScores < ActiveRecord::Migration[5.1]
  def change
    add_column :scores, :diff, :float
  end
end
