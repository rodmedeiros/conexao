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

ActiveRecord::Schema.define(version: 2018_06_21_143139) do

  create_table "horarios", force: :cascade do |t|
    t.string "dia_semana"
    t.string "hora_inicio"
    t.string "hora_fim"
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

end
