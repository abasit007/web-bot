class CreateJsSripts < ActiveRecord::Migration[6.1]
  def change
    create_table :js_sripts do |t|
      t.string :chatscript

      t.timestamps
    end
  end
end
