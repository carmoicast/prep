class Incidence < ActiveRecord::Base
  belongs_to :box  
  belongs_to :user
  
  attr_accessible :box_id, :hora, :incidencia, :user_id, :casilla, :status
end
