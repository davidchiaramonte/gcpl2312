# The name of this view in Looker is "Countries"
view: countries {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `geospatial_data.countries` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Capital" in Explore.

  dimension: capital {
    type: string
    sql: ${TABLE}.capital ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.currency_name ;;
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.currency_symbol ;;
  }

  dimension: emoji {
    type: string
    sql: ${TABLE}.emoji ;;
  }

  dimension: emoji_u {
    type: string
    sql: ${TABLE}.emojiU ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_latitude {
    type: sum
    sql: ${latitude} ;;  }
  measure: average_latitude {
    type: average
    sql: ${latitude} ;;  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: native {
    type: string
    sql: ${TABLE}.native ;;
  }

  dimension: numeric_code {
    type: number
    sql: ${TABLE}.numeric_code ;;
  }

  dimension: phone_code {
    type: string
    sql: ${TABLE}.phone_code ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: subregion {
    type: string
    sql: ${TABLE}.subregion ;;
  }

  dimension: timezones {
    type: string
    sql: ${TABLE}.timezones ;;
  }

  dimension: tld {
    type: string
    sql: ${TABLE}.tld ;;
  }
  measure: count {
    type: count
    drill_fields: [id, currency_name, name]
  }
}
