class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :reject_methods

def reject_methods
  if ['TRACE','PATCH'].include?(request.method)
    #raise ActionController::RoutingError.new('Not Found')
    raise ActionController::MethodNotAllowed.new('Method not allowed')  #405
    # or whatever you want to do (redirect, error message, ...)
  end
end

end
