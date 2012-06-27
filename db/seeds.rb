# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

def lowercase_accents(string)
  string.gsub('Á','á').gsub('É','é').gsub('Í','í').gsub('Ó','ó').gsub('Ú','ú') if string
end

#DISTRITO	CASILLA	MUNICIPIO	DOMICILIO	USER_ID

puts "Leyendo archivo"
casillas = File.read('/Users/carlitos/Desktop/Casillas_por_municipio_prep.csv').force_encoding('MacRoman').encode('UTF-8')
puts "Parseando archivo"
casillas_array = CSV.parse(casillas, :headers => true)
casillas_array.each do |casilla|
  
#distrito = State.find_or_create_by_name(casilla['DISTRITO'])

puts "Creando casilla #{casilla['DISTRITO']} #{casilla['CASILLA']} #{casilla['MUNICIPIO']} #{casilla['DOMICILIO']} #{casilla['USER_ID']} \n"
# DISTRITO,CASILLA,MUNICIPIO,DOMICILIO

  casilla = Box.create( distrito: casilla['DISTRITO'],
    casilla: casilla['CASILLA'],
    municipio: casilla['MUNICIPIO'],
    direccion: casilla['DOMICILIO'],
    user_id: casilla['USER_ID']  )

#  casilla.create_result
end