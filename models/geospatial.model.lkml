connection: "david_c_test"

include: "/views/states.view"
include: "/views/countries.view.lkml"
include: "/views/cities.view.lkml"               # include all views in the views/ folder in this project

explore: countries {}

explore: cities {
  join: states {
    type: left_outer
    sql_on: ${cities.state_id} = ${states.id} ;;
    relationship: many_to_one
  }
  join: countries {
    type: left_outer
    sql_on: ${countries.id} = ${cities.country_id} ;;
    relationship: one_to_many
  }
}
