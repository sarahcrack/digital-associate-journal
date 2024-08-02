class RenameDigitalAreaToDigitalDiscipline < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :digital_area, :digital_discipline
  end
end
