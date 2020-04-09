defmodule SentrydemoWeb.HandledController do
    use SentrydemoWeb, :controller

    def index(conn, _params) do
        conn
        |> send_resp(500, Poison.encode!(%{"Error" => "A handled error occurred."}))
        |> halt
    end
  end
