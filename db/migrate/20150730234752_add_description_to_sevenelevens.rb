class AddDescriptionToSevenelevens < ActiveRecord::Migration
  def change
    add_column :sevenelevens, :description, :text
  end
end
