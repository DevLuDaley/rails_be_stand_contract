class Post < ApplicationRecord
    # has_many :contacts
    has_and_belongs_to_many :contacts, join_table: "table_name", foreign_key: "contacts_id" :contacts
end
