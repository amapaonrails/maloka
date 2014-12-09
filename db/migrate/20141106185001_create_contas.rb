class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :subdominio
      t.integer :owner_id

      t.timestamps
    end
  end
end
