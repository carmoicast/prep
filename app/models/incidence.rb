class Incidence < ActiveRecord::Base
  belongs_to :box
  
  attr_accessible :box_id, :hora, :tipo_incidente_apertura, :tipo_incidente_cierre, :tipo_incidente_otro, :tipo_incidente_proceso, :incidencia
end
