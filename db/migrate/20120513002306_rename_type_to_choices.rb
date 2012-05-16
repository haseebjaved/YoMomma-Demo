class RenameTypeToChoices < ActiveRecord::Migration
  def up
    rename_column("choices", "type", "category")
  end

  def down
  end
end
