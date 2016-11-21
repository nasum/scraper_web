# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :scraper_web,
  ecto_repos: [ScraperWeb.Repo]

# Configures the endpoint
config :scraper_web, ScraperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gImcCTttLvsKJ9XEOJjI/ZvIarIomK4bADWMiTr3N634M480z7MZkQ/YfMIBqURD",
  render_errors: [view: ScraperWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ScraperWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
