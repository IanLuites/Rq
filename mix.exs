defmodule Rq.MixProject do
  use Mix.Project

  def project do
    [
      app: :rq,
      description: "Simple Elixir HTTP requests.",
      version: "0.0.1",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),

      # Testing
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],

      # Docs
      name: "Rq",
      source_url: "https://github.com/IanLuites/rq",
      homepage_url: "https://github.com/IanLuites/rq",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def package do
    [
      name: :rq,
      maintainers: ["Ian Luites"],
      licenses: ["MIT"],
      files: [
        # Elixir
        # "lib/rq",
        "lib/rq.ex",
        "mix.exs",
        "README*",
        "LICENSE*"
      ],
      links: %{
        "GitHub" => "https://github.com/IanLuites/rq"
      }
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:heimdallr, ">= 0.0.0", only: ~w(dev test)a}
    ]
  end
end
