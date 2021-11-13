class AddImageToBrands < ActiveRecord::Migration[6.0]
  def change
    add_column :brands, :image_url, :string
  end
end
