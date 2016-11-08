demodule Rumbl.SessionController do
  import Rumbl.Web, :controller
  
  def new(conn, _) do
    render conn, "new.html"
  end
  
  def create(conn, %{"session" => %{"username" => username, "password" => pass}}) do
    case Rumbl.Auth.login_by_username_pass(conn,user,pass,repo: Rumbl.Repo) do
    end      
  end
 
  def create(conn,params) do
  
  end    
end
