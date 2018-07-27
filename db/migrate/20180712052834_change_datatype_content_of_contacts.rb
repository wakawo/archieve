class ChangeDatatypeContentOfContacts < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :content, :text
  end
end
