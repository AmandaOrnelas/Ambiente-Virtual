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

ActiveRecord::Schema.define(version: 20180924123446) do

  create_table "administradors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_administradors_on_email", unique: true
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

  create_table "capitulos", force: :cascade do |t|
    t.string "titulo"
    t.integer "materia_id"
    t.text "tempo_medio"
    t.text "tempo_maximo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapter_test_times", force: :cascade do |t|
    t.integer "user_id"
    t.integer "chapter_id"
    t.text "total_time"
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

  create_table "materias", id: false, force: :cascade do |t|
    t.text "id"
    t.text "nome"
  end

  create_table "materias_users", id: false, force: :cascade do |t|
    t.integer "id"
    t.integer "user_id"
    t.integer "materia_id"
    t.integer "capitulo_id"
    t.text "tempo_atual"
  end

# Could not dump table "provas" because of following StandardError
#   Unknown type '' for column 'capitulo_id'

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
