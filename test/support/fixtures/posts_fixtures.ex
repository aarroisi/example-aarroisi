defmodule ExampleProject.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ExampleProject.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> ExampleProject.Posts.create_post()

    post
  end
end
