class ApplicationController < ActionController::Base
    before_action :set_script


    def set_script
        @script = JsSript.first.try(:chatscript)
    end
end
