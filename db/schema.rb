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

ActiveRecord::Schema.define(version: 2018_07_04_190331) do

  create_table "conversas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.string "dia_semana"
    t.string "hora_inicio"
    t.string "hora_fim"
  end

  create_table "mensagems", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "conversa_id"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversa_id"], name: "index_mensagems_on_conversa_id"
    t.index ["usuario_id"], name: "index_mensagems_on_usuario_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "story"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "participacao_conversas", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "conversa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversa_id"], name: "index_participacao_conversas_on_conversa_id"
    t.index ["usuario_id"], name: "index_participacao_conversas_on_usuario_id"
  end

  create_table "participacaos", force: :cascade do |t|
    t.integer "users_id"
    t.integer "turma_id"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turma_id"], name: "index_participacaos_on_turma_id"
    t.index ["users_id"], name: "index_participacaos_on_users_id"
  end

  create_table "participations", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "class_id"
    t.index ["class_id"], name: "index_participations_on_class_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "postagems", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topicos", force: :cascade do |t|
    t.string "titulo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string "codigo"
    t.string "disciplina"
    t.integer "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo", "disciplina", "semestre"], name: "index_turmas_on_codigo_and_disciplina_and_semestre", unique: true
    t.index ["codigo"], name: "index_turmas_on_codigo"
    t.index ["disciplina"], name: "index_turmas_on_disciplina"
    t.index ["semestre"], name: "index_turmas_on_semestre"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "iduff", limit: 9
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "iduff"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["iduff"], name: "index_usuarios_on_iduff", unique: true
  end

end
