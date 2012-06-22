class Bunker < ActiveRecord::Base
  attr_accessible :box_id, :casilla_cinco, :casilla_cuatro, :casilla_diez, :casilla_dos, :casilla_nueve, :casilla_ocho, :casilla_seis, :casilla_siete, :casilla_tres, :casilla_uno, :en_operacion, :en_ruta, :municipio, :nombre
end
