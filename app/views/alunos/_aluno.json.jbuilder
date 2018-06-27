json.extract! aluno, :id, :nome, :cpf, :email, :password, :nivel, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
