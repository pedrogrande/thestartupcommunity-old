class AddChecksForUser < ActiveRecord::Migration
  def change
    add_column :users, :opt_in, :boolean
    add_column :users, :accept_terms, :boolean
  end
end
