require 'spec_helper'

describe 'conta criacao' do
	it 'permite ao usuário criar conta' do
		visit root_path
		click_link 'Criar Conta'

		fill_in 'Email', with: 'rpablo.mv@gmail.com'
		fill_in 'Password', with: 'pw'
		fill_in 'Password Confirmation', with: 'pw'
		fill_in 'Subdominio', with: 'test_subdominio'
		click_button 'Criar Conta'

		expect(page).to have_content('Inscrito com sucesso')
	end
end