require 'sinatra'
require 'active_record'
require_relative '../app.rb'

class Editora < ActiveRecord::Base
end


Editora.create(
  [
    {:nome => 'Campanhia das letras'},
    {:nome => 'Aleph'},
    {:nome => 'Rocco'}
  ]
)

get('/consulta/editoras'){
  result = Editora.all.as_json
  halt(200, result.to_json)
}
