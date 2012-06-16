class PollStepsController < ApplicationController
  include Wicked::Wizard
  
  steps :estructura, :encuesta
  
  def show
    #@poll = Poll.new
    @poll = params[:id]
    render_wizard 
  end
  
  def update
    @poll = params[:id]
    @poll.attributes = params[:id]
    render_wizard @poll
  end
  
end
