defmodule RemoteControlCar do
  defstruct [:nickname, battery_percentage: 100, distance_driven_in_meters: 0]

  def new(nickname \\ "none") do
    %RemoteControlCar{nickname: nickname}
  end

  def display_distance(%RemoteControlCar{distance_driven_in_meters: d}) do
    "#{d} meters"
  end

  def display_battery(%RemoteControlCar{battery_percentage: b}) do
    "battery #{b}%"
  end

  def drive(%RemoteControlCar{battery_percentage: 0, distance_driven_in_meters: distance_driven, nickname: nickname }) do
    %RemoteControlCar{battery_percentage: 0, distance_driven_in_meters: distance_driven, nickname: nickname}
  end

  def drive(%RemoteControlCar{battery_percentage: battery_percentage, distance_driven_in_meters: distance_driven, nickname: nickname}) do
    %RemoteControlCar{battery_percentage: battery_percentage - 1, distance_driven_in_meters: distance_driven + 20, nickname: nickname}
  end
end
