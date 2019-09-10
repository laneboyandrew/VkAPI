class CreateVkpages < ActiveRecord::Migration[6.0]
  def change
    create_table :vkpages do |t|

      t.timestamps
    end
  end
end
