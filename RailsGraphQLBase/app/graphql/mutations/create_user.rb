module Mutations
  class CreateUser < BaseMutation
    # TODO: define return fields
    field :user, Types::UserType, null: false
    field :errors, [String], null:false

    # TODO: define arguments
    argument :name, String, required: true
    argument :email, String, required: true


    # TODO: define resolve method
    def resolve(name:,email:)
      user = User.new(name: name, email: email)

      if (user.save!)
        {
          user: user,
          error: []
        }
      else
        {
          user: nil, 
          errors:[user.errors.full_messages]
        }
      end
     end
  end
end
