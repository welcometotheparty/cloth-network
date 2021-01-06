class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, default: 'КРОССОВКИ CHAOS'
      t.text :desc , default: "Беговой стиль для уверенных в себе. Дизайн этих кроссовок вдохновлен архивными моделями adidas. Гладкий кожаный верх контрастирует с текстурными вставками из замши. Мягкая амортизация для комфортных и плавных движений."
      t.integer :price , default: 6000
      t.string :image1 , default: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/20332b8e026b49a882cfaba500b42825_9366/Krossovki_Chaos_belyj_FW3176_01_standard.jpg"
      t.string :image2 , default: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/253a9c0e750f4e1fa82baba500b45b59_9366/Krossovki_Chaos_belyj_FW3176_43_detail.jpg"
      t.string :image3 , default: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/08e73a1ecc2d443cbf64aba500b453f6_9366/Krossovki_Chaos_belyj_FW3176_42_detail.jpg"
      t.string :sex, default: 'муж'
      t.string :size, default: "M / 48-50EU"
      t.string :location , default: "Moscow"
      #t.string :shipment , default: "from Moscow"
      t.string :tag , default: 'обувь'
      t.integer :user_id

      t.timestamps
    end
  end
end
