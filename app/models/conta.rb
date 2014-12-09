class Conta < ActiveRecord::Base
	SUBDOMINIOS_RESTRITOS = %w(www)

	validates :subdominio, presence: true,
						   uniqueness: { case_sensitive: false},
						   format: { with: /\A[\w\-]+\Z/i, message: 'contém caracteres inválidos'} ,
	 					   exclusion: { in: SUBDOMINIOS_RESTRITOS, message: 'restrito' }
	
	before_validation :downcase_subdominio

	private
	def downcase_subdominio
		self.subdominio = subdominio.try(:downcase)
	end
end
