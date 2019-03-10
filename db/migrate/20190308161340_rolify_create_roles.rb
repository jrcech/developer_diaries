# frozen_string_literal: true

class RolifyCreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table(:roles) do |table|
      table.string :name
      table.references :resource, polymorphic: true

      table.timestamps
    end

    create_table(:users_roles, id: false) do |table|
      table.references :user
      table.references :role
    end

    add_index(:roles, %i[name resource_type resource_id])
    add_index(:users_roles, %i[user_id role_id])
  end
end
