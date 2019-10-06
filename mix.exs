defmodule Serum.Themes.Theme.MixFile do
  use Mix.Project

  def project do
    [
      app: :serum_theme_awsm,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      applications: [:serum]
    ]
  end

  defp deps do
    [
      {:serum, "~> 1.2"}
    ]
  end

  defp description() do
    "A Serum theme based on awsm.css framework"
  end

  defp package() do
    [
      # These are the default files included in the package
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/martosaur/serum-theme-awsm",
        "Example" => "https://distantprovince.by/awsm_example/"
      }
    ]
  end
end
