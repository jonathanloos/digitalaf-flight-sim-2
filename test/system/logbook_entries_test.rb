require "application_system_test_case"

class LogbookEntriesTest < ApplicationSystemTestCase
  setup do
    @logbook_entry = logbook_entries(:one)
  end

  test "visiting the index" do
    visit logbook_entries_url
    assert_selector "h1", text: "Logbook entries"
  end

  test "should create logbook entry" do
    visit logbook_entries_url
    click_on "New logbook entry"

    fill_in "Actual instrument", with: @logbook_entry.actual_instrument
    fill_in "Arrival icao", with: @logbook_entry.arrival_icao
    fill_in "Cross country", with: @logbook_entry.cross_country
    fill_in "Date", with: @logbook_entry.date
    fill_in "Day landing", with: @logbook_entry.day_landing
    fill_in "Departure icao", with: @logbook_entry.departure_icao
    fill_in "Duration", with: @logbook_entry.duration
    fill_in "Flt training", with: @logbook_entry.flt_training
    fill_in "Ground training", with: @logbook_entry.ground_training
    fill_in "Multi engine land", with: @logbook_entry.multi_engine_land
    fill_in "Night landing", with: @logbook_entry.night_landing
    fill_in "Notes", with: @logbook_entry.notes
    fill_in "Pilot in command", with: @logbook_entry.pilot_in_command_id
    fill_in "Second in command", with: @logbook_entry.second_in_command_id
    fill_in "Simulated instrument", with: @logbook_entry.simulated_instrument
    fill_in "Simulator", with: @logbook_entry.simulator
    fill_in "Single engine land", with: @logbook_entry.single_engine_land
    fill_in "Time of day", with: @logbook_entry.time_of_day
    click_on "Create Logbook entry"

    assert_text "Logbook entry was successfully created"
    click_on "Back"
  end

  test "should update Logbook entry" do
    visit logbook_entry_url(@logbook_entry)
    click_on "Edit this logbook entry", match: :first

    fill_in "Actual instrument", with: @logbook_entry.actual_instrument
    fill_in "Arrival icao", with: @logbook_entry.arrival_icao
    fill_in "Cross country", with: @logbook_entry.cross_country
    fill_in "Date", with: @logbook_entry.date
    fill_in "Day landing", with: @logbook_entry.day_landing
    fill_in "Departure icao", with: @logbook_entry.departure_icao
    fill_in "Duration", with: @logbook_entry.duration
    fill_in "Flt training", with: @logbook_entry.flt_training
    fill_in "Ground training", with: @logbook_entry.ground_training
    fill_in "Multi engine land", with: @logbook_entry.multi_engine_land
    fill_in "Night landing", with: @logbook_entry.night_landing
    fill_in "Notes", with: @logbook_entry.notes
    fill_in "Pilot in command", with: @logbook_entry.pilot_in_command_id
    fill_in "Second in command", with: @logbook_entry.second_in_command_id
    fill_in "Simulated instrument", with: @logbook_entry.simulated_instrument
    fill_in "Simulator", with: @logbook_entry.simulator
    fill_in "Single engine land", with: @logbook_entry.single_engine_land
    fill_in "Time of day", with: @logbook_entry.time_of_day
    click_on "Update Logbook entry"

    assert_text "Logbook entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Logbook entry" do
    visit logbook_entry_url(@logbook_entry)
    click_on "Destroy this logbook entry", match: :first

    assert_text "Logbook entry was successfully destroyed"
  end
end
