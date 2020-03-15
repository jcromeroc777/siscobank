class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :typedocument
      t.string :document
      t.string :issuedate
      t.string :expirationdate
      t.string :name
      t.string :email
      t.string :mainphone
      t.string :secondaryphone

      t.timestamps
    end
  end
end
