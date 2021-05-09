class Post < ApplicationRecord
    # has_many :contacts
    has_and_belongs_to_many :contracts #, join_table: "contracts_posts", foreign_key: "contract_id" :contracts
end
