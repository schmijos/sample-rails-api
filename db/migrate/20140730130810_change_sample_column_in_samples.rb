class ChangeSampleColumnInSamples < ActiveRecord::Migration
  def change
    rename_column :samples, :sample, :value
  end
end
