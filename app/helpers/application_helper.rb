module ApplicationHelper
    def resource_name
      :usuario
    end
    
    def resource
      @resource ||= Usuario.new
    end
    
end