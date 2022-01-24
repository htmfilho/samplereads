defmodule SamplereadsWeb.UserView do
    use SamplereadsWeb, :view

    alias Samplereads.Accounts

    def first_name(%Accounts.User{name: name}) do
        name
        |> String.split(" ")
        |> Enum.at(0)
    end
end