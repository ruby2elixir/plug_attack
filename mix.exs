defmodule PlugAttack.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_attack,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    A plug building toolkit for blocking and throttling abusive requests.
    """
  end

  defp deps do
    [{:plug,    "~> 1.0"},
     {:earmark, "~> 1.0",  only: :dev},
     {:ex_doc,  "~> 0.14", only: :dev}]
  end

  defp package do
    [maintainers: ["Michał Muskała"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/michalmuskala/plug_attack"}]
  end
end
