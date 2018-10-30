# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181030145347) do

  create_table "administradores", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_administradores_on_email", unique: true
  end

  create_table "alternativas", force: :cascade do |t|
    t.text "opcao1"
    t.text "opcao2"
    t.text "opcao3"
    t.text "opcao4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "questao_id"
    t.index ["questao_id"], name: "index_alternativas_on_questao_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "email"
    t.string "password"
    t.integer "nivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "aulas", force: :cascade do |t|
    t.string "titulo"
    t.text "texto"
    t.integer "conteudo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conteudo_id"], name: "index_aulas_on_conteudo_id"
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.string "titulo"
    t.integer "capitulo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["capitulo_id"], name: "index_avaliacaos_on_capitulo_id"
  end

  create_table "capitulos", force: :cascade do |t|
    t.string "titulo"
    t.text "tempo_medio"
    t.text "tempo_maximo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conteudos", force: :cascade do |t|
    t.string "subtitulo"
    t.text "texto"
    t.integer "ordem"
    t.text "imagem"
    t.integer "capitulo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["capitulo_id"], name: "index_conteudos_on_capitulo_id"
  end

  create_table "prova_alunos", force: :cascade do |t|
    t.text "resposta1"
    t.text "resposta2"
    t.text "resposta3"
    t.text "resposta4"
    t.text "resposta5"
    t.text "resposta6"
    t.text "resposta7"
    t.text "resposta8"
    t.text "resposta9"
    t.text "resposta10"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "avaliacao_id"
    t.index ["avaliacao_id"], name: "index_prova_alunos_on_avaliacao_id"
    t.index ["user_id"], name: "index_prova_alunos_on_user_id"
  end

  create_table "questaos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "questao"
    t.string "respostacerta"
    t.integer "avaliacao_id"
    t.index ["avaliacao_id"], name: "index_questaos_on_avaliacao_id"
  end

  create_table "tempo_capitulos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "capitulo_id"
    t.string "tempo_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["capitulo_id"], name: "index_tempo_capitulos_on_capitulo_id"
    t.index ["user_id"], name: "index_tempo_capitulos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "nivel"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
