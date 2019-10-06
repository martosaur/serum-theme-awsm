defmodule Serum.Themes.Awsm do
  @moduledoc false

  @behaviour Serum.Theme

  @priv_dir :code.priv_dir(:serum_theme_awsm)

  @impl true
  def name, do: "Awsm"

  @impl true
  def description, do: "A Serum theme based on awsm.css"

  @impl true
  def author, do: "Aliaksandr Martsinovich https://github.com/martosaur"

  @impl true
  def legal, do: "MIT License. See LICENSE for the full text."

  @impl true
  def version, do: "0.1.0"

  @impl true
  def serum, do: "~> 1.2"

  @impl true
  def get_includes do
    @priv_dir
    |> Path.join("includes/*.html.eex")
    |> Path.wildcard()
  end

  @impl true
  def get_templates do
    @priv_dir
    |> Path.join("templates/*.html.eex")
    |> Path.wildcard()
  end

  @impl true
  def get_assets do
    @priv_dir
    |> Path.join("assets")
  end
end
