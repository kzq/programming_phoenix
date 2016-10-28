defmodule Rumbl.UserController do
  Rumbl.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Rumbl.User)
    render conn, "index.html", users: users
  end
 
  def show(conn, params) do

  end  

end
