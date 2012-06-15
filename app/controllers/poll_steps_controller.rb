class PollStepsController < ApplicationController
  include Wicked::Wizard
  
  steps :estructura, :encuesta
  
  def show
    render_wizard 
  end
  
end
