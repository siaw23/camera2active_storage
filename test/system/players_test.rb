# frozen_string_literal: true

require 'application_system_test_case'

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test 'visiting the index' do
    visit players_url
    assert_selector 'h1', text: 'Players'
  end

  test 'creating a Player' do
    visit players_url
    click_on 'New Player'

    fill_in 'Age', with: @player.age
    fill_in 'Citizenship', with: @player.citizenship
    fill_in 'Contract expires', with: @player.contract_expires
    fill_in 'Current club', with: @player.current_club
    fill_in 'Dob', with: @player.dob
    fill_in 'Foot', with: @player.foot
    fill_in 'Height', with: @player.height
    fill_in 'Outfitter', with: @player.outfitter
    fill_in 'Pob', with: @player.pob
    fill_in 'Position', with: @player.position
    click_on 'Create Player'

    assert_text 'Player was successfully created'
    click_on 'Back'
  end

  test 'updating a Player' do
    visit players_url
    click_on 'Edit', match: :first

    fill_in 'Age', with: @player.age
    fill_in 'Citizenship', with: @player.citizenship
    fill_in 'Contract expires', with: @player.contract_expires
    fill_in 'Current club', with: @player.current_club
    fill_in 'Dob', with: @player.dob
    fill_in 'Foot', with: @player.foot
    fill_in 'Height', with: @player.height
    fill_in 'Outfitter', with: @player.outfitter
    fill_in 'Pob', with: @player.pob
    fill_in 'Position', with: @player.position
    click_on 'Update Player'

    assert_text 'Player was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Player' do
    visit players_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Player was successfully destroyed'
  end
end
