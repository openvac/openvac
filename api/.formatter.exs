# Used by "mix format"
[
  import_deps: [:ecto, :phoenix],
  inputs: ["{mix,.formatter}.exs", "priv/*/seeds.exs", "{config,lib,test}/**/*.{ex,exs}"],
  subdirectories: ["priv/*/migrations"]
]
