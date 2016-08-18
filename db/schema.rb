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

ActiveRecord::Schema.define(version: 20160818194722) do

  create_table "address", primary_key: "id_address", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "index_address",   limit: 45
    t.string   "sub_address",     limit: 145
    t.string   "city_address",    limit: 145
    t.string   "street_address",  limit: 145
    t.string   "home_address",    limit: 45
    t.string   "korp_address",    limit: 45
    t.string   "kv_address",      limit: 45
    t.string   "client_address",  limit: 45
    t.datetime "updated_at"
    t.datetime "created_at"
    t.string   "comment_address", limit: 145
  end

  create_table "auth_group", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 80, null: false
    t.index ["name"], name: "name", unique: true, using: :btree
  end

  create_table "auth_group_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
    t.index ["group_id", "permission_id"], name: "auth_group_permissions_group_id_0cd325b0_uniq", unique: true, using: :btree
    t.index ["permission_id"], name: "auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id", using: :btree
  end

  create_table "auth_permission", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",                        null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
    t.index ["content_type_id", "codename"], name: "auth_permission_content_type_id_01ab375a_uniq", unique: true, using: :btree
  end

  create_table "auth_user", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "password",     limit: 128,               null: false
    t.datetime "last_login",               precision: 6
    t.boolean  "is_superuser",                           null: false
    t.string   "username",     limit: 30,                null: false
    t.string   "first_name",   limit: 30,                null: false
    t.string   "last_name",    limit: 30,                null: false
    t.string   "email",        limit: 254,               null: false
    t.boolean  "is_staff",                               null: false
    t.boolean  "is_active",                              null: false
    t.datetime "date_joined",              precision: 6, null: false
    t.index ["username"], name: "username", unique: true, using: :btree
  end

  create_table "auth_user_groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "auth_user_groups_group_id_97559544_fk_auth_group_id", using: :btree
    t.index ["user_id", "group_id"], name: "auth_user_groups_user_id_94350c0c_uniq", unique: true, using: :btree
  end

  create_table "auth_user_user_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
    t.index ["permission_id"], name: "auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id", using: :btree
    t.index ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_14a6b632_uniq", unique: true, using: :btree
  end

  create_table "bills", primary_key: "BillId", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "BillName",         limit: 12
    t.string   "BillContactId",    limit: 11
    t.date     "BillDataCreate"
    t.date     "BillDatePay"
    t.text     "BillText",         limit: 65535
    t.string   "BillStatus",       limit: 2,     default: "1"
    t.string   "BillContragentId", limit: 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billstatus", primary_key: "BillStatusId", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "BillStatusName",  limit: 244
    t.string "BillStatusColor", limit: 20
  end

  create_table "call_status", primary_key: "callStatusId", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "callStatusName",  limit: 100
    t.string "callStatusColor", limit: 20
  end

  create_table "calls", primary_key: "CallID", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "CallType",       limit: 20
    t.string   "CallUser",       limit: 100
    t.text     "CallText",       limit: 65535
    t.date     "CallDate"
    t.string   "CallTime",       limit: 5
    t.string   "CallContact",    limit: 11
    t.boolean  "CallReady"
    t.binary   "CallContragent", limit: 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_property", primary_key: "ClientPropertyId", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "ClientPropertyName", limit: 250, default: ""
  end

  create_table "client_type", primary_key: "ClientTypeId", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "ClientTypeName", default: "0"
  end

  create_table "client_vid", primary_key: "ClientVidId", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "ClientVidName", limit: 244
  end

  create_table "clients", primary_key: "ClientId", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", comment: "Таблица контрагентов" do |t|
    t.text     "ClientName",            limit: 65535
    t.integer  "ClientType",                          default: 0
    t.integer  "ClientProperty",                      default: 0
    t.string   "ClientInn",             limit: 18,    default: "0"
    t.integer  "ClientKpp",                           default: 0
    t.integer  "ClientOkpo",                          default: 0
    t.integer  "ClientBik",                           default: 0
    t.integer  "ClientBankScore",                     default: 0
    t.text     "ClientUrAddress",       limit: 65535,                            collation: "utf8_general_ci"
    t.string   "ClientFIOPod",                        default: "0",              collation: "utf8_general_ci"
    t.text     "ClientInfo",            limit: 65535,                            collation: "utf8_general_ci"
    t.integer  "ClientIndex"
    t.text     "ClientCity",            limit: 65535,                            collation: "utf8_general_ci"
    t.text     "ClientAddress",         limit: 65535,                            collation: "utf8_general_ci"
    t.integer  "Clientid_Account",                    default: 0,   null: false
    t.string   "ClientTelephone",                                                collation: "utf8_general_ci"
    t.string   "ClientTelephoneMob",                                             collation: "utf8_general_ci"
    t.string   "ClientEmail",           limit: 100,                              collation: "utf8_general_ci"
    t.string   "ClientEmailDop",                                                 collation: "utf8_general_ci"
    t.string   "Clienticq",                                                      collation: "utf8_general_ci"
    t.date     "ClientDateReg"
    t.string   "ClientFullName",        limit: 200,                              collation: "utf8_general_ci"
    t.text     "ClientInfoContr",       limit: 65535,                            collation: "utf8_general_ci"
    t.string   "ClientSite",            limit: 100,                              collation: "utf8_general_ci"
    t.string   "ClientSite2",                                                    collation: "utf8_general_ci"
    t.integer  "ClientidDirection"
    t.integer  "ClientidType"
    t.integer  "ClientidState"
    t.integer  "ClientidManager",                                                                              comment: "ID пользователя"
    t.integer  "Clientid_managergroup",               default: 0,   null: false
    t.integer  "Clientis_see",                        default: 0,                                              comment: "Могут просматривать(0 - только я, 1 - все, 2 - еще какой-то менеджер)"
    t.datetime "ClientDateUpdate",                                  null: false
    t.integer  "Clientdel_status",                    default: 0,   null: false,                               comment: "Статус удаления контрагента(1 удален)"
    t.datetime "Clientdel_datetime",                                null: false,                               comment: "Время удаления контрагента"
    t.integer  "Clientimport_id",                     default: 0,   null: false
    t.integer  "Clientimported",        limit: 1,     default: 0,   null: false
    t.integer  "ClientVid",                           default: 0
    t.text     "ClientPublicName",      limit: 65535,                            collation: "utf8_general_ci"
    t.text     "ClientWorkName",        limit: 65535,                            collation: "utf8_general_ci"
    t.string   "ClientShipStatus",      limit: 2,     default: "0",              collation: "utf8_general_ci"
    t.text     "ClientShipText",        limit: 65535,                            collation: "utf8_general_ci"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "ClientBorn"
    t.index ["ClientDateUpdate"], name: "ClientDateUpdate", using: :btree
    t.index ["ClientidManager"], name: "ClientidManager", using: :btree
    t.index ["Clientid_Account"], name: "Clientid_Account", using: :btree
    t.index ["Clientid_managergroup"], name: "Clientid_managergroup", using: :btree
    t.index ["Clientis_see"], name: "Clientis_see", using: :btree
  end

  create_table "contacts", primary_key: "IDContact", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "FamilyContact",       limit: 100
    t.string   "NameContact",         limit: 100
    t.string   "SoNameContact",       limit: 100
    t.integer  "SexContact"
    t.integer  "DirectionContact"
    t.text     "PostContact",         limit: 65535
    t.string   "TelephoneContact"
    t.string   "TelephoneMobContact"
    t.string   "EmailContact"
    t.string   "EmailDopContact",     limit: 100,   default: "", null: false
    t.string   "icq",                 limit: 100
    t.string   "Site"
    t.string   "AddressCon",          limit: 100
    t.string   "City",                limit: 100
    t.string   "DopInfo"
    t.boolean  "is_emails"
    t.date     "DateDR",                                         null: false, comment: "Дата дня рождения конттакта"
    t.boolean  "remind",                                         null: false, comment: "Нужно ли напоминать пользователю о предстоящем дне рождении контакта"
    t.integer  "is_see"
    t.datetime "DateUpdate",                                     null: false
    t.integer  "maincontact",                       default: 0,  null: false
    t.integer  "del_status",                        default: 0,  null: false, comment: "Статус удаления контакта (1 удален)"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["FamilyContact"], name: "FamilyContact", type: :fulltext
    t.index ["NameContact"], name: "NameContact", type: :fulltext
    t.index ["SoNameContact"], name: "SoNameContact", type: :fulltext
  end

  create_table "django_admin_log", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "action_time",                        precision: 6, null: false
    t.text     "object_id",       limit: 4294967295
    t.string   "object_repr",     limit: 200,                      null: false
    t.integer  "action_flag",     limit: 2,                        null: false, unsigned: true
    t.text     "change_message",  limit: 4294967295,               null: false
    t.integer  "content_type_id"
    t.integer  "user_id",                                          null: false
    t.index ["content_type_id"], name: "django_admin__content_type_id_c4bce8eb_fk_django_content_type_id", using: :btree
    t.index ["user_id"], name: "django_admin_log_user_id_c564eba6_fk_auth_user_id", using: :btree
  end

  create_table "django_content_type", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
    t.index ["app_label", "model"], name: "django_content_type_app_label_76bd3d3b_uniq", unique: true, using: :btree
  end

  create_table "django_migrations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "app",                   null: false
    t.string   "name",                  null: false
    t.datetime "applied", precision: 6, null: false
  end

  create_table "django_session", primary_key: "session_key", id: :string, limit: 40, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "session_data", limit: 4294967295,               null: false
    t.datetime "expire_date",                     precision: 6, null: false
    t.index ["expire_date"], name: "django_session_de54fa62", using: :btree
  end

  create_table "email", primary_key: "IDEmail", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "IDEmplEmail"
    t.string   "AttrEmail"
    t.string   "MaskEmail"
    t.string   "DopInfo"
    t.integer  "stat"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "files", primary_key: "fileId", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fileName",         limit: 250
    t.date     "fileDate"
    t.time     "fileTime"
    t.string   "fileUser",         limit: 45
    t.string   "fileRoute",        limit: 250
    t.string   "fileClient",       limit: 45
    t.binary   "fileDATA",         limit: 65535
    t.string   "fileOriginalName", limit: 250
    t.string   "fileMIME"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fileSize",         limit: 45
  end

  create_table "jobs", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "queue",                           null: false
    t.text    "payload",      limit: 4294967295, null: false
    t.integer "attempts",     limit: 1,          null: false, unsigned: true
    t.integer "reserved",     limit: 1,          null: false, unsigned: true
    t.integer "reserved_at",                                  unsigned: true
    t.integer "available_at",                    null: false, unsigned: true
    t.integer "created_at",                      null: false, unsigned: true
    t.index ["queue", "reserved", "reserved_at"], name: "jobs_queue_reserved_reserved_at_index", using: :btree
  end

  create_table "link", primary_key: "IDLink", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "IDEmplLink"
    t.string   "AttrLink"
    t.string   "MaskLink"
    t.string   "DopInfo"
    t.integer  "stat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "migrations", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "migration", null: false
    t.integer "batch",     null: false
  end

  create_table "password_resets", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "email",                                           null: false
    t.string   "token",                                           null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["email"], name: "password_resets_email_index", using: :btree
    t.index ["token"], name: "password_resets_token_index", using: :btree
  end

  create_table "purchase", primary_key: "purchaseId", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "purchaseContragent", limit: 10
    t.text     "purchaseLink",       limit: 65535
    t.date     "purchaseDateStart"
    t.date     "purchaseDateEnd"
    t.text     "purchaseNote",       limit: 65535
    t.string   "purchaseName",       limit: 200
    t.string   "purchaseContact",    limit: 11
    t.string   "purchaseStatus",     limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_status", primary_key: "psId", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "psName",  limit: 200
    t.string "psColor", limit: 20
  end

  create_table "sessions", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "id",                          null: false
    t.integer "user_id"
    t.string  "ip_address",    limit: 45
    t.text    "user_agent",    limit: 65535
    t.text    "payload",       limit: 65535, null: false
    t.integer "last_activity",               null: false
    t.index ["id"], name: "sessions_id_unique", unique: true, using: :btree
  end

  create_table "telephone", primary_key: "IDTelephone", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "IDEmpl"
    t.string   "AttrTelephone"
    t.string   "MaskTelephone"
    t.string   "DopName"
    t.integer  "stat"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "ticket", primary_key: "ticketId", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text   "ticketName", limit: 65535
    t.text   "ticketText", limit: 65535
    t.string "ticketUser", limit: 11
    t.date   "ticketDate"
    t.time   "ticketTime"
  end

  create_table "ticket_comment", primary_key: "ticketCommentId", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "ticketCommentUser",     limit: 11
    t.text   "ticketCommentText",     limit: 65535
    t.string "ticketCommentTicketId", limit: 11
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "workplace", primary_key: "wpId", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "wpContactId",   limit: 45
    t.string   "wpClientId",    limit: 45
    t.date     "wpDateStart"
    t.date     "wpDateEnd"
    t.string   "wpContactPost", limit: 250
    t.text     "wpContactText", limit: 65535
    t.string   "wpCheck",       limit: 45
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "workplaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "auth_group_permissions", "auth_group", column: "group_id", name: "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id"
  add_foreign_key "auth_group_permissions", "auth_permission", column: "permission_id", name: "auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id"
  add_foreign_key "auth_permission", "django_content_type", column: "content_type_id", name: "auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id"
  add_foreign_key "auth_user_groups", "auth_group", column: "group_id", name: "auth_user_groups_group_id_97559544_fk_auth_group_id"
  add_foreign_key "auth_user_groups", "auth_user", column: "user_id", name: "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id"
  add_foreign_key "auth_user_user_permissions", "auth_permission", column: "permission_id", name: "auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id"
  add_foreign_key "auth_user_user_permissions", "auth_user", column: "user_id", name: "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id"
  add_foreign_key "django_admin_log", "auth_user", column: "user_id", name: "django_admin_log_user_id_c564eba6_fk_auth_user_id"
  add_foreign_key "django_admin_log", "django_content_type", column: "content_type_id", name: "django_admin__content_type_id_c4bce8eb_fk_django_content_type_id"
end
