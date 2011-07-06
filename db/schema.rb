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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110622225136) do

  create_table "crewmanagements", :force => true do |t|
    t.string   "fonction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "navigations", :force => true do |t|
    t.string   "compagnie"
    t.string   "navire"
    t.string   "pavillon"
    t.string   "type_navire"
    t.date     "date_embarquement"
    t.date     "date_debarquement"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "fonction_occupee"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "nom"
    t.string   "prenom"
    t.string   "date_lieu_naissance"
    t.string   "brevet"
    t.string   "nationalite"
    t.string   "niveau_scolaire"
    t.string   "situation_matrimoniale"
    t.integer  "nombre_enfants"
    t.string   "numero_passeport"
    t.date     "validite_passeport"
    t.string   "numero_livret_maritime"
    t.date     "validite_livret"
    t.string   "visite_medicale"
    t.date     "validite_visite"
    t.string   "numero_cnps"
    t.string   "numero_cni"
    t.string   "numero_telephone"
    t.string   "adresse_postale"
    t.string   "lieu_residence"
    t.string   "nom_prenom_mere"
    t.string   "date_lieu_naissance_mere"
    t.string   "nationalite_mere"
    t.string   "nom_prenom_pere"
    t.string   "date_lieu_naissance_pere"
    t.string   "nationalite_pere"
    t.string   "nom_prenom_epouse"
    t.string   "date_lieu_naissance_epouse"
    t.string   "nationalite_epouse"
    t.string   "nom_prenom_correspondant"
    t.string   "lien_avec_travailleur"
    t.string   "numero_telephone_correspondant"
    t.string   "adresse_postale_correspondant"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fonction"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "hashed_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "statut"
  end

end
