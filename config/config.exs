# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :testansible,
  ecto_repos: [Testansible.Repo]

# Configures the endpoint
config :testansible, TestansibleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z87DxpaUWBQ85rL8bDEftZN5IKGYSZf/PF8s/AKLOLhYNkt5+aRN/E0JTuykMpyZ",
  render_errors: [view: TestansibleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Testansible.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This line was automatically added by ansible-elixir-stack setup script
if System.get_env("SERVER") do
  config :phoenix, :serve_endpoints, true
end
