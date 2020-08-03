class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.belongs_to :user, index: true #Ça doit être un truc avec des classes, on verra si j'ai le courage de le tenter

      t.timestamps
    end
  end
end
