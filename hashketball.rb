# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# game_hash
#   { home: {
#       team_name: "Brooklyn Nets",
#       colors: ["Black", "White"],
#       players: [
#         {

def num_points_scored(name)
    points = 0
    game_hash.each do |location, team_hash|
      team_hash.each do |key, value|
        if key == :players
          i=0 
          while game_hash[location][:players][i] do
            if game_hash[location][:players][i][:player_name] == name 
              points = game_hash[location][:players][i][:points]
            end
            i+= 1
          end
        end  
      end  
    end
    points
end  


def shoe_size(name)
    size = 0
    game_hash.each do |location, team_hash|
      team_hash.each do |key, value|
        if key == :players
          i=0 
          while game_hash[location][:players][i] do
            if game_hash[location][:players][i][:player_name] == name 
              size = game_hash[location][:players][i][:shoe]
            end
            i+= 1
          end
        end  
      end  
    end
    size
end  

def team_colors(team_name)
  team_colors = []
  game_hash.each do |location, team_hash|
    team_hash.each do |key, value|
      if game_hash[location][:team_name] == team_name 
        team_colors = game_hash[location][:colors]
      end
    end  
  end
  team_colors
end 

def team_names
  teams = []
  game_hash.each do |location, team_hash|
    team_hash.each do |key, value|
      if key == :team_name
        teams << game_hash[location][:team_name]
      end 
    end
  end  
  teams
end 

def player_numbers(team_name)
    roster = []
    game_hash.each do |location, team_hash|
      team_hash.each do |key, value|
        if game_hash[location][:team_name] == team_name
          i=0 
          while game_hash[location][:players][i] do
            roster << game_hash[location][:players][i][:number] 
            i+= 1
          end
        end  
      end  
    end
    roster
end 

def player_stats(name)
    stats = {}
    game_hash.each do |location, team_hash|
      team_hash.each do |key, value|
        if key == :players
          i=0 
          while game_hash[location][:players][i] do
            if game_hash[location][:players][i][:player_name] == name 
              game_hash[location][:players][i].each do |stat, num|
                stats[stat] = num
              end  
            end
            i+= 1
          end
        end  
      end  
    end
    stats
end 

def big_shoe_rebounds
    big_shoe = 0
    rebounds = 0
    game_hash.each do |location, team_hash|
      team_hash.each do |key, value|
        team_hash[:players].each do |player|
           if player[:shoe] > big_shoe
             big_shoe = player[:shoe]
             rebounds = player[:rebounds]
           end
        end
      end 
    end
    rebounds
end    
    #     if key == :players
    #       i=0 
    #       while game_hash[location][:players][i] do
    #         
    #             rebounds = game_hash[location][:players][i][:rebounds]
    #         end  
    #         i+= 1
    #       end
    #     end
    #   end  
    # end
#     rebounds
# end  