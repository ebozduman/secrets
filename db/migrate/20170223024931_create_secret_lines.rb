class CreateSecretLines < ActiveRecord::Migration[5.0]
  def change
    create_table :secret_lines do |t|
      t.text, :secret_text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
