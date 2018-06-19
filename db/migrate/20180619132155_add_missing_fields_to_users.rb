class AddMissingFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :confirmation_token, :string
      #t.string   :confirmation_token
      add_column :users, :confirmed_at, :datetime
      #t.datetime :confirmed_at
      add_column :users, :confirmation_sent_at, :datetime
      #t.datetime :confirmation_sent_at
      add_column :users, :unconfirmed_email, :string
      #t.string   :unconfirmed_email # Only if using reconfirmable

  end
end
