class SportsTeam

  attr_reader :name, :players
  attr_accessor :coach, :point

  def initialize(team_name, players, coach)
    @name = team_name
    @players = players
    @coach = coach
    @point = point
  end

  def team_name()
    return @name
  end

  def players()
    return @players
  end

  def coach()
    return @coach
  end

  def coach_name(coach)
    @coach = coach
  end

  def add_new_player(players)
    @players.push(players)
  end

  # def check_players(players)
  #   @players = players
  # end

  def start_points(points)
    @point = points
  end

  def game_points(points)
    @point += points
  end

end
