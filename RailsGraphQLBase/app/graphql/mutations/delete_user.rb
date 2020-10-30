module Mutations
  class DeleteUser < BaseMutation
    # TODO: define return fields
    field :message, String, null: false

    # TODO: define arguments
    argument :id, Integer, required: true

    # TODO: define resolve method
    def resolve(id:)
      user = User.find(id)
      byebug 
      user.destroy

      {
        message: 'User Was Destroyed',
        errors: []
      }
     end

  end
end
