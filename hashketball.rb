require 'pry'

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

# thing = game_hash[:away][:players]["Brendan Haywood"][:points]
# binding.pry
# puts "empty line"

def num_points_scored(name)
#    binding.pry
  score = 0
  game_hash.each do |team, data|
#      binding.pry
    data[:players].each do |player_name, stats|
#       binding.pry
      if player_name == name
        score = stats[:points]
      end
#       binding.pry
    end
  end
  score
end

#puts num_points_scored("Ben Gordan")

def shoe_size(name)
  size = 0
  game_hash.each do |team, data|
#      binding.pry
    data[:players].each do |player_name, stats|
#       binding.pry
      if player_name == name
        size = stats[:shoe]
      end
#       binding.pry
    end
  end
  size
end

def team_colors(team)
  colors = []
  game_hash.each do |name, data|
#    binding.pry
    if data[:team_name] == team
      colors = data[:colors]
#      binding.pry
    end
  end
  colors
end

def team_names
  array = []
  game_hash.each do |name, data|
#    binding.pry
    array << data[:team_name]
#      binding.pry
  end
  array
end

def player_numbers(name)
  array = []
  game_hash.each do |value, data|
#    binding.pry
    if data[:team_name] == name
      data[:players].each do |player, stats|
#        binding.pry
        array << stats[:number]
#        binding.pry
      end
    end
  end
  array
end

def player_stats(player_name)
  array = []
  game_hash.each do |value, data|
#    binding.pry
    data[:players].each do |name, stats|
#       binding.pry
        if player_name == name
          array = stats
  #        binding.pry
        end
    end
  end
  array
end

def big_shoe_rebounds
  size = 0
  rebounds = 0
  game_hash.each do |team, data|
#      binding.pry
    data[:players].each do |player_name, stats|
#       binding.pry
      if stats[:shoe] > size
        size = stats[:shoe]
        rebounds = stats[:rebounds]
      end
#       binding.pry
    end
  end
  rebounds
end
