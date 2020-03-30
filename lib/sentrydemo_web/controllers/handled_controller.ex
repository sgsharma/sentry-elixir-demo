defmodule SentrydemoWeb.HandledController do
    use SentrydemoWeb, :controller
  
    def index(conn, _params) do
        raise ArgumentError, message: "Handled an argument error."
        exit(500)
        json conn, 500 
    end
  end