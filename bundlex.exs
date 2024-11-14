defmodule Uniwhat.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      natives: natives(Bundlex.platform())
    ]
  end

  def natives(_platform) do
    [
      uniwhat: [
        sources: ["uniwhat.c"],
        interface: [:nif],
        preprocessor: Unifex
      ]
    ]
  end
end
