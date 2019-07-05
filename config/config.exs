# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_project,
  ecto_repos: [PhoenixProject.Repo]

# Configures the endpoint
config :phoenix_project, PhoenixProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5CxlEXLgG6oWJm995uqEYNgYDqEa6IN6ZaQRybpesW8x9DEj3H6JWAyoAi1BDYJC",
  render_errors: [view: PhoenixProjectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixProject.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
