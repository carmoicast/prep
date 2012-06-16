class PollStepsController < ApplicationController
  include Wicked::Wizard
  
  steps :estructura, :encuesta
  
  def show
    @poll = Poll.new
    render_wizard  
  end
end
