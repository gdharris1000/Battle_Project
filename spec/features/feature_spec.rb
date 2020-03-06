# In spec/features, write a feature test that checks that the hompage says Testing infrastructure working!


feature 'Name entry form' do
  scenario 'player form' do
    sign_in_and_play # calling the method from web_helpers.rb
    expect(page).to have_content 'Gareth vs. Jara'
  end
end

feature 'see player 2 hit points' do
  scenario 'play screen' do
    sign_in_and_play
    expect(page).to have_content "Jara's hit points: 10"
  end
end

feature 'hit player 2' do
  scenario 'player 1 one press hit button' do
    sign_in_and_play
    click_button 'hitPlayer2'
    expect(page).to have_content 'You hit Jara'
  end
end

feature 'player 2 HP reduces by 2 when hit by player 1' do
  scenario 'player 1 press hit button' do
    sign_in_and_play
    click_button 'hitPlayer2'
    click_button 'back'
    expect(page).to have_content "Jara's hit points: 8"
  end
end

feature 'switch turns' do
  scenario 'Player 2 goes after Player 1' do
    sign_in_and_play
    4.times do
    click_button 'hitPlayer2'
    click_button 'back'
    click_button 'hitPlayer1'
    click_button 'back'
    end
    click_button 'hitPlayer2'
    expect(page).to have_content "Gareth Wins"
  end
end

feature 'declare winner' do
  scenario 'Player 1 wins' do

  end
end
