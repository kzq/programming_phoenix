defmodule Rumbl.Auth do
  import Plug.Conn

  def init(conn, options) do
    Keyword.fetch!(options, :repo)
  end

  def call(conn, repo) do
    user_id = get_session(conn, :user_id)
    user = user_id && repo.get(Rumbl.User, user_id)
    assign(conn, :current_user, user)
  end
end
