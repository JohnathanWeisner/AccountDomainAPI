class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :hostname
      t.string :origin_ip_address
      t.references :account

      t.timestamps
    end
    add_index :domains, :hostname
    add_index :domains, :origin_ip_address
  end
end
