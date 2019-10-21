#

require 'pry'
require 'csv'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end
# on initialise pour pouvoir faire changer la valeur par l'utilisateur

  def save
  CSV.open("./db/gossip.csv", "ab") do |table|
    table << [@author, @content]
#  on met dans un tableau les valeurs initialisée
  end
end


def self.all
  all_gossips = []
  CSV.read("./db/gossip.csv").each do |csv_line|
    all_gossips << Gossip.new(csv_line[0], csv_line[1])
  end
  return all_gossips
end


def self.find(id)
  all_gossips = []
  i = 0
  CSV.read("./db/gossip.csv").each do |csv_line|
    i +=1
    if i == id.to_i
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
  end
  return all_gossips
end
#  on verifie 1 a 1 les elements du tableau
#  on check si ils sont égals à la valeur de id
# si i = id on affiche les ligrnes corespondant au tableau csv

end
