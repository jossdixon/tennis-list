class CreateSponsorships < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsorships do |t|
      t.references :player, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
