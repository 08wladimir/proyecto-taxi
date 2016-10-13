class WelcomeController < ApplicationController
  
  def home
    @archi = Dir.entries("public/Banner/");
  end

  def services
  end

  def contact
  end

  def aboutus
  end
  
  def controlpanel
    
  end
  
end
