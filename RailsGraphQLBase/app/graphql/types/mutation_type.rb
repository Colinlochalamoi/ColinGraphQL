module Types
  class MutationType < Types::BaseObject
    field :delete_user, mutation: Mutations::DeleteUser, description: 'Destroy User'
    field :create_user, mutation: Mutations::CreateUser, description: 'Create User'
    
  end
end
