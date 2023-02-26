resource "newrelic_one_dashboard" "dash_api_prod" {
  name = "Laundry Dash Monitoring (PROD)"
  page {
    name = "Laundry Dash API Monitors (PROD)"

    // billboards
    dynamic "widget_billboard" {
      for_each = local.api_signals
      content {
        title    = "${widget_billboard.value.endpoint_name} (${widget_billboard.value.metric})"
        row      = widget_billboard.value.row // odd rows for billboards
        column   = widget_billboard.value.col
        width    = local.widget_width
        height   = local.widget_height
        warning  = widget_billboard.value.warn
        critical = widget_billboard.value.error

        nrql_query {
          query = widget_billboard.value.nrql_bill
        }
      }
    }

    // line trends
    dynamic "widget_line" {
      for_each = local.api_signals
      content {
        title  = "${widget_line.value.endpoint_name} Trend (${widget_line.value.metric})"
        row    = (1 + widget_line.value.row) // even rows for trends
        column = widget_line.value.col
        width  = local.widget_width
        height = local.widget_height

        nrql_query {
          query = widget_line.value.nrql_trend
        }
      }
    }
  } // page
}

# tag the version
data "newrelic_entity" "dashboard" {
  name   = "Laundry Dash Monitoring (PROD)"
  type   = "DASHBOARD"
  domain = "APM"
}

resource "newrelic_entity_tags" "version" {
  guid = data.newrelic_entity.dashboard.guid
  tag {
    key    = "BUILD_VERSION"
    values = [var.nr_dash_build_version]
  }
}