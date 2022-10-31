require "test_helper"

class LogbookEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logbook_entry = logbook_entries(:one)
  end

  test "should get index" do
    get logbook_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_logbook_entry_url
    assert_response :success
  end

  test "should create logbook_entry" do
    assert_difference("LogbookEntry.count") do
      post logbook_entries_url, params: { logbook_entry: { actual_instrument: @logbook_entry.actual_instrument, arrival_icao: @logbook_entry.arrival_icao, cross_country: @logbook_entry.cross_country, date: @logbook_entry.date, day_landing: @logbook_entry.day_landing, departure_icao: @logbook_entry.departure_icao, duration: @logbook_entry.duration, flt_training: @logbook_entry.flt_training, ground_training: @logbook_entry.ground_training, multi_engine_land: @logbook_entry.multi_engine_land, night_landing: @logbook_entry.night_landing, notes: @logbook_entry.notes, pilot_in_command_id: @logbook_entry.pilot_in_command_id, second_in_command_id: @logbook_entry.second_in_command_id, simulated_instrument: @logbook_entry.simulated_instrument, simulator: @logbook_entry.simulator, single_engine_land: @logbook_entry.single_engine_land, time_of_day: @logbook_entry.time_of_day } }
    end

    assert_redirected_to logbook_entry_url(LogbookEntry.last)
  end

  test "should show logbook_entry" do
    get logbook_entry_url(@logbook_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_logbook_entry_url(@logbook_entry)
    assert_response :success
  end

  test "should update logbook_entry" do
    patch logbook_entry_url(@logbook_entry), params: { logbook_entry: { actual_instrument: @logbook_entry.actual_instrument, arrival_icao: @logbook_entry.arrival_icao, cross_country: @logbook_entry.cross_country, date: @logbook_entry.date, day_landing: @logbook_entry.day_landing, departure_icao: @logbook_entry.departure_icao, duration: @logbook_entry.duration, flt_training: @logbook_entry.flt_training, ground_training: @logbook_entry.ground_training, multi_engine_land: @logbook_entry.multi_engine_land, night_landing: @logbook_entry.night_landing, notes: @logbook_entry.notes, pilot_in_command_id: @logbook_entry.pilot_in_command_id, second_in_command_id: @logbook_entry.second_in_command_id, simulated_instrument: @logbook_entry.simulated_instrument, simulator: @logbook_entry.simulator, single_engine_land: @logbook_entry.single_engine_land, time_of_day: @logbook_entry.time_of_day } }
    assert_redirected_to logbook_entry_url(@logbook_entry)
  end

  test "should destroy logbook_entry" do
    assert_difference("LogbookEntry.count", -1) do
      delete logbook_entry_url(@logbook_entry)
    end

    assert_redirected_to logbook_entries_url
  end
end
