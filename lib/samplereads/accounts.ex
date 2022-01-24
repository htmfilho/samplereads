defmodule Samplereads.Accounts do
    @moduledoc """
    The Accounts context.
    """

    alias Samplereads.Accounts.User

    def list_users do
        [
            %User{id: "1", name: "José", username: "valim"},
            %User{id: "2", name: "Bruce", username: "bruce"},
            %User{id: "3", name: "Chris", username: "chris"}
        ]
    end

    def get_user(id) do
        Enum.find(list_users(), fn map -> map.id == id end)
    end

    def get_user_by(params) do
        Enum.find(list_users(), fn map -> 
            Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
        end)
    end
end