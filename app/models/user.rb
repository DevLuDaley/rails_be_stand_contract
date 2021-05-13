require 'bcrypt'


class User < ApplicationRecord
# class User < ActiveRecord::Base
     # users.password_hash in the database is a :string
#   include BCrypt

    has_secure_password
    # validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }


# after_find do |user|
#     user.password = BCrypt::Password.new(user.password)
#   end

    def create
        @user = User.new(params[:user])
        @user.password = params[:user][:password]
        @user.save!
    end

    # def password
    #     # @password ||= Password.new(password_hash)
    #     @password ||= Password.new(password)
    # end

    # def password=(new_password)
    #     @password = Password.create(new_password)
    #     # self.password_hash = @password
    #     self.password = @password
    # end
end
