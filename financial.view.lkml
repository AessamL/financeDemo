view: financial {
  sql_table_name: reliance.Financial ;;

  dimension: __sales_ {
    type: string
    sql: ${TABLE}.__Sales_ ;;
  }

  dimension: _cogs_ {
    type: string
    sql: ${TABLE}._COGS_ ;;
  }

  dimension: _discount_band_ {
    type: string
    sql: ${TABLE}._Discount_Band_ ;;
  }

  dimension: _discounts_ {
    type: string
    sql: ${TABLE}._Discounts_ ;;
  }

  dimension: _gross_sales_ {
    type: string
    sql: ${TABLE}._Gross_Sales_ ;;
  }

  dimension: _manufacturing_price_ {
    type: number
    sql: ${TABLE}._Manufacturing_Price_ ;;
  }

  dimension: _month_name_ {
    type: string
    sql: ${TABLE}._Month_Name_ ;;
  }

  dimension: _product_ {
    type: string
    sql: ${TABLE}._Product_ ;;
  }

  dimension: _profit_ {
    type: string
    sql: ${TABLE}._Profit_ ;;
  }

  dimension: _sale_price_ {
    type: number
    sql: ${TABLE}._Sale_Price_ ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: month_number {
    type: number
    sql: ${TABLE}.Month_Number ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: units_sold {
    type: number
    sql: ${TABLE}.Units_Sold ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
