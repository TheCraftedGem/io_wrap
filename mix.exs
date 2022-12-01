defmodule IoWrap.MixProject do
  use Mix.Project

  def project do
    [
      app: :io_wrap,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description do
    """
    Creates a sigil i that returns an IO List
    """
  end

  defp package do
    [
      maintainers: ["Melvin Cedeno"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/thecraftedgem/io_wrap"}
    ]
  end
end
