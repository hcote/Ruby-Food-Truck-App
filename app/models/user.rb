class User < ApplicationRecord
    has_secure_password

    # only validate password length on create (not update)
    validates :password, length: { minimum: 6 }, on: :create
  
    validates :email,
        presence: true,
        uniqueness: true,
        format: {
            with: /@/,
            message: "not a valid format"
        }
  

end
