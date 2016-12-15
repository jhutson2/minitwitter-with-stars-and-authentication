class RenameVotesToHearts < ActiveRecord::Migration[5.0]
  def change
    rename_table :votes, :hearts
    # you write code here to rename the `votes` table to `hearts`
    # See active migration guide for inspiration
  end
end
