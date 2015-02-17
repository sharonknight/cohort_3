class ChangeHouseYearToDate < ActiveRecord::Migration
  def change
    change_table :houses do |t|
      t.change :year_built, :date
    end
  end
end
