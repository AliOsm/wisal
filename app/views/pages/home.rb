class Views::Pages::Home < Views::Base
  def view_template
    h1 { "Home" }
  end
end
