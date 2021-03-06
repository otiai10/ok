defmodule Good.Mixfile do
  use Mix.Project

  def project do
    [
      app: :good,
      name: :good,
      version: "0.0.2",
      elixir: "~> 1.6",
      description: "Early Return like syntax for Elixir",
      package: [
        licenses:    ["MIT"],
        maintainers: ["Hiromu OCHIAI<otiai10@gmail.com>"],
        links: %{
          "GitHub" => "https://github.com/otiai10/good"
        }
      ],
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      docs: [
        extras: ["README.md"],
      ],
      source_url: "https://github.com/otiai10/good",
      homepage_url: "https://github.com/otiai10/good",
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
