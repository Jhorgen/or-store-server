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

ActiveRecord::Schema.define(version: 2020_03_10_024542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "category"
    t.string "brand"
    t.text "description"
    t.float "price"
    t.float "saleprice"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "checkoutquantity"
    t.string "title"
    t.string "selectedoption"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.string "option5"
    t.string "option6"
    t.string "option7"
    t.string "option8"
    t.string "option9"
    t.string "option10"
    t.integer "option1quantity"
    t.integer "option2quantity"
    t.integer "option3quantity"
    t.integer "option4quantity"
    t.integer "option5quantity"
    t.integer "option6quantity"
    t.integer "option7quantity"
    t.integer "option8quantity"
    t.integer "option9quantity"
    t.integer "option10quantity"
    t.string "selectedOptionIndex"
    t.float "option1price"
    t.float "option2price"
    t.float "option3price"
    t.float "option4price"
    t.float "option5price"
    t.float "option6price"
    t.float "option7price"
    t.float "option8price"
    t.float "option9price"
    t.float "option10price"
    t.string "spec1"
    t.string "spec2"
    t.string "spec3"
    t.string "spec4"
    t.string "spec5"
    t.string "spec6"
    t.string "spec7"
    t.string "spec8"
    t.string "spec9"
    t.string "spec10"
    t.string "image6"
    t.string "image7"
    t.string "image8"
    t.string "image9"
    t.string "image10"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "email"
    t.string "firstname"
    t.string "lastname"
    t.string "address"
    t.string "address2"
    t.string "brand1"
    t.string "title1"
    t.integer "quantity1"
    t.string "selectedoption1"
    t.float "price1"
    t.string "brand2"
    t.string "title2"
    t.integer "quantity2"
    t.string "selectedoption2"
    t.float "price2"
    t.string "brand3"
    t.string "title3"
    t.integer "quantity3"
    t.string "selectedoption3"
    t.float "price3"
    t.string "brand4"
    t.string "title4"
    t.integer "quantity4"
    t.string "selectedoption4"
    t.float "price4"
    t.string "brand5"
    t.string "title5"
    t.integer "quantity5"
    t.string "selectedoption5"
    t.float "price5"
    t.string "brand6"
    t.string "title6"
    t.integer "quantity6"
    t.string "selectedoption6"
    t.float "price6"
    t.string "brand7"
    t.string "title7"
    t.integer "quantity7"
    t.string "selectedoption7"
    t.float "price7"
    t.string "brand8"
    t.string "title8"
    t.integer "quantity8"
    t.string "selectedoption8"
    t.float "price8"
    t.string "brand9"
    t.string "title9"
    t.integer "quantity9"
    t.string "selectedoption9"
    t.float "price9"
    t.string "brand10"
    t.string "title10"
    t.integer "quantity10"
    t.string "selectedoption10"
    t.float "price10"
    t.string "brand11"
    t.string "title11"
    t.integer "quantity11"
    t.string "selectedoption11"
    t.float "price11"
    t.string "brand12"
    t.string "title12"
    t.integer "quantity12"
    t.string "selectedoption12"
    t.float "price12"
    t.string "brand13"
    t.string "title13"
    t.integer "quantity13"
    t.string "selectedoption13"
    t.float "price13"
    t.string "brand14"
    t.string "title14"
    t.integer "quantity14"
    t.string "selectedoption14"
    t.float "price14"
    t.string "brand15"
    t.string "title15"
    t.integer "quantity15"
    t.string "selectedoption15"
    t.float "price15"
    t.string "brand16"
    t.string "title16"
    t.integer "quantity16"
    t.string "selectedoption16"
    t.float "price16"
    t.string "brand17"
    t.string "title17"
    t.integer "quantity17"
    t.string "selectedoption17"
    t.float "price17"
    t.string "brand18"
    t.string "title18"
    t.integer "quantity18"
    t.string "selectedoption18"
    t.float "price18"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brand19"
    t.string "title19"
    t.integer "quantity19"
    t.string "selectedoption19"
    t.float "price19"
    t.string "brand20"
    t.string "title20"
    t.integer "quantity20"
    t.string "selectedoption20"
    t.float "price20"
    t.string "brand21"
    t.string "title21"
    t.integer "quantity21"
    t.string "selectedoption21"
    t.float "price21"
    t.string "title22"
    t.string "brand22"
    t.integer "quantity22"
    t.string "selectedoption22"
    t.float "price22"
    t.string "brand23"
    t.integer "quantity23"
    t.string "selectedoption23"
    t.float "price23"
    t.string "brand24"
    t.string "title24"
    t.integer "quantity24"
    t.string "selectedoption24"
    t.float "price24"
    t.string "brand25"
    t.string "title25"
    t.integer "quantity25"
    t.string "selectedoption25"
    t.float "price25"
    t.string "brand26"
    t.string "title26"
    t.integer "quantity26"
    t.string "selectedoption26"
    t.float "price26"
    t.string "brand27"
    t.string "title27"
    t.integer "quantity27"
    t.string "selectedoption27"
    t.float "price27"
    t.string "brand28"
    t.string "title28"
    t.integer "quantity28"
    t.string "selectedoption28"
    t.float "price28"
    t.string "brand29"
    t.integer "quantity29"
    t.string "selectedoption29"
    t.float "price29"
    t.string "brand30"
    t.string "title30"
    t.string "title29"
    t.integer "quantity30"
    t.string "selectedoption30"
    t.float "price30"
    t.float "amount"
    t.float "shipping"
  end

end
