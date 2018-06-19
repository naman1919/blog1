class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.2]
  def change
      ## Required

      add_column :users, :provider, :string, :default => "email"
      #t.string :provider, :null => false, :default => "email"
      add_column :users, :uid, :string
      #t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      #t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      #t.string   :reset_password_token
      #t.datetime :reset_password_sent_at
      #t.boolean  :allow_password_change, :default => false

      ## Rememberable
      #t.datetime :remember_created_at

      ## Trackable
      #t.integer  :sign_in_count, :default => 0, :null => false
      #t.datetime :current_sign_in_at
      #t.datetime :last_sign_in_at
      #t.string   :current_sign_in_ip
      #t.string   :last_sign_in_ip

      ## Confirmable
      #add_column :users, :confirmation_token, :string
      #t.string   :confirmation_token
      #add_column :users, :confirmed_at, :datetime
      #t.datetime :confirmed_at
      #add_column :users, :confirmation_sent_at, :datetime
      #t.datetime :confirmation_sent_at
      #t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      #add_column :users, :name, :string
      #t.string :name
      #add_column :users, :nickname, :string
      #t.string :nickname
      #add_column :users, :image, :string
      #t.string :image
      #t.string :email

      ## Tokens
      add_column :users, :tokens, :text
      #t.text :tokens

      #add_index :users, [:uid, :provider],     unique: true
      #add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,       unique: true
  end
end