class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, default: 'Супер худак 2000'
      t.text :desc , default: "Солнечное затмение 29 мая 1919 года — полное солнечное затмение, частные фазы которого можно было наблюдать в Южной Америке и в Африке. Это затмение примечательно тем, что оказалось самым длинным за предшествующие ему 500 лет: максимальная продолжите"
      t.integer :price , default: 500
      t.string :image1 , default: "https://picsum.photos/200/300"
      t.string :image2 , default: "https://picsum.photos/200/300"
      t.string :image3 , default: "https://picsum.photos/200/300"
      t.string :image4 , default: "https://picsum.photos/200/300"
      t.string :sex, default: 'муж'
      t.string :size, default: "M / 48-50EU"
      t.string :location , default: "Moscow"
      t.string :shipment , default: "from Moscow"
      t.string :tag , default: 'верх'
      t.integer :user_id

      t.timestamps
    end
  end
end
