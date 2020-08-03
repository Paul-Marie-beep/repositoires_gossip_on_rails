class CreateJoinUserPotins < ActiveRecord::Migration[5.2]
  #En fait je suis vraiment crevé donc le nom de la migration a aucun rapport entre le titre et le contenu
  def change
    create_table :join_user_potins do |t|
      t.belongs_to :potin, index: true
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
