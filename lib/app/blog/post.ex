defmodule App.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "blog_posts" do
    field :title, :string
    field :views, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :views])
    # |> validate_required([:title, :views])
    |> validate_required([:title, "Titulo precisa ser informado."])
    |> validate_required([:title, "Views precisa ser informado."])

  end
end
