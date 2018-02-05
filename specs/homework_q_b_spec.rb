require('minitest/autorun')
require_relative('../homework_q_b.rb')
class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Hearts", ["Harry", "Henry"], "Billy")
  end

  def test_team_name
    name = @team.team_name()
    assert_equal("Hearts", name)
  end

  def test_players_names
    players = @team.players()
    assert_equal(["Harry", "Henry"], players)
  end

  def test_coach_name
    coach = @team.coach()
    assert_equal("Billy", coach)
  end

  def test_set_coach_name
    @team.coach="Matty"
    coach = @team.coach()
    assert_equal("Matty", coach)
  end

  def test_add_new_player
    @team.players[2]="James"
    players = @team.players()
    assert_equal(["Harry", "Henry", "James"], players)
  end

  def test_check_players_names
    players = @team.players[1]
    assert_equal("Henry", players)
  end

  def test_start_points
    point = @team.start_points(0)
    assert_equal(0, point)
  end

  def test_win_or_loose
    @team.game_points=2
    point = @team.game_points()
    assert_equal(2, point)
  end
end
