class RenameLocationsToPortfolios < ActiveRecord::Migration[7.1]
  def change
    rename_table :locations, :portfolios
  end
end
