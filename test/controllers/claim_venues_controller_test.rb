require 'test_helper'

class ClaimVenuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @claim_venue = claim_venues(:one)
  end

  test "should get index" do
    get claim_venues_url
    assert_response :success
  end

  test "should get new" do
    get new_claim_venue_url
    assert_response :success
  end

  test "should create claim_venue" do
    assert_difference('ClaimVenue.count') do
      post claim_venues_url, params: { claim_venue: { email: @claim_venue.email, name: @claim_venue.name, other: @claim_venue.other, phone_number: @claim_venue.phone_number, venue: @claim_venue.venue } }
    end

    assert_redirected_to claim_venue_url(ClaimVenue.last)
  end

  test "should show claim_venue" do
    get claim_venue_url(@claim_venue)
    assert_response :success
  end

  test "should get edit" do
    get edit_claim_venue_url(@claim_venue)
    assert_response :success
  end

  test "should update claim_venue" do
    patch claim_venue_url(@claim_venue), params: { claim_venue: { email: @claim_venue.email, name: @claim_venue.name, other: @claim_venue.other, phone_number: @claim_venue.phone_number, venue: @claim_venue.venue } }
    assert_redirected_to claim_venue_url(@claim_venue)
  end

  test "should destroy claim_venue" do
    assert_difference('ClaimVenue.count', -1) do
      delete claim_venue_url(@claim_venue)
    end

    assert_redirected_to claim_venues_url
  end
end
