api_golden_signals = {
  order_api = [
    {
      "metric"        = "Latency",
      "endpoint_name" = "Order API",
      "row"           = "1",
      "col"           = "1",
      "thresh_warn"   = "3",
      "thresh_error"  = "5",
      "nrql_bill"     = "select percentile(duration, 90) as `P90 Latency` from Transaction where appName = 'laundry-dash-order-prod' since 3 hours ago",
      "nrql_trend"    = "select percentile(duration, 90) as `P90 Latency` from Transaction where appName = 'laundry-dash-order-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Errors",
      "endpoint_name" = "Order API",
      "row"           = "1",
      "col"           = "4",
      "thresh_warn"   = "10",
      "thresh_error"  = "15",
      "nrql_bill"     = "select rate(count(*), 1 minute) as `5XX RPM` from Transaction where appName = 'laundry-dash-order-prod' and httpResponseCode LIKE '5%' since 3 hours ago",
      "nrql_trend"    = "select rate(count(*), 1 minute) as `5XX RPM` from Transaction where appName = 'laundry-dash-order-prod' and httpResponseCode LIKE '5%' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Transactions",
      "endpoint_name" = "Order API",
      "row"           = "1",
      "col"           = "7",
      "thresh_warn"   = "20",
      "thresh_error"  = "5",
      "nrql_bill"     = "select rate(count(*), 1 minute) as `Request RPM` from Transaction where appName = 'laundry-dash-order-prod' since 3 hours ago",
      "nrql_trend"    = "select rate(count(*), 1 minute) as `Request RPM` from Transaction where appName = 'laundry-dash-order-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Saturation via Apdex",
      "endpoint_name" = "Order API",
      "row"           = "1",
      "col"           = "10",
      "thresh_warn"   = "0.85",
      "thresh_error"  = "0.75"
      "nrql_bill"     = "select apdex(duration, t: 5) as `apdex(5s)` from Transaction where appName = 'laundry-dash-order-prod' since 3 hours ago",
      "nrql_trend"    = "select apdex(duration, t: 5) as `apdex(5s)` from Transaction where appName = 'laundry-dash-order-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    }
  ],
  pickup_api = [
    {
      "metric"        = "Latency",
      "endpoint_name" = "Pickup API",
      "row"           = "3",
      "col"           = "1",
      "thresh_warn"   = "3",
      "thresh_error"  = "5",
      "nrql_bill"     = "select percentile(duration, 90) as `P90 Latency` from Transaction where appName = 'laundry-dash-pickup-prod' and req_uri='/health' since 3 hours ago",
      "nrql_trend"    = "select percentile(duration, 90) as `P90 Latency` from Transaction where appName = 'laundry-dash-order-prod' and req_uri='/health' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Errors",
      "endpoint_name" = "Pickup API",
      "row"           = "3",
      "col"           = "4",
      "thresh_warn"   = "10",
      "thresh_error"  = "15",
      "nrql_bill"     = "select rate(count(*), 1 minute) as `5XX RPM` from Transaction where appName = 'laundry-dash-pickup-prod' and httpResponseCode LIKE '5%' since 3 hours ago",
      "nrql_trend"    = "select rate(count(*), 1 minute) as `5XX RPM` from Transaction where appName = 'laundry-dash-pickup-prod' and httpResponseCode LIKE '5%' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Transactions",
      "endpoint_name" = "Pickup API",
      "row"           = "3",
      "col"           = "7",
      "thresh_warn"   = "15",
      "thresh_error"  = "5",
      "nrql_bill"     = "select rate(count(*), 1 minute) as `Request RPM` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago",
      "nrql_trend"    = "select rate(count(*), 1 minute) as `Request RPM` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Saturation via Apdex",
      "endpoint_name" = "Pickup API",
      "row"           = "3",
      "col"           = "10",
      "thresh_warn"   = "0.85",
      "thresh_error"  = "0.75"
      "nrql_bill"     = "select apdex(duration, t: 5) as `apdex(5s)` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago",
      "nrql_trend"    = "select apdex(duration, t: 5) as `apdex(5s)` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    }
  ],
  deliver_api = [
    {
      "metric"        = "Latency",
      "endpoint_name" = "Deliver API",
      "row"           = "5",
      "col"           = "1",
      "thresh_warn"   = "3",
      "thresh_error"  = "5",
      "nrql_bill"     = "select percentile(duration, 90) as `P90 Latency` from Transaction where appName = 'laundry-dash-deliver-prod' and req_uri='/health' since 3 hours ago",
      "nrql_trend"    = "select percentile(duration, 90) as `P90 Latency` from Transaction where appName = 'laundry-dash-deliver-prod' and req_uri='/health' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Errors",
      "endpoint_name" = "Deliver API",
      "row"           = "5",
      "col"           = "4",
      "thresh_warn"   = "10",
      "thresh_error"  = "15",
      "nrql_bill"     = "select rate(count(*), 1 minute) as `5XX RPM` from Transaction where appName = 'laundry-dash-deliver-prod' and httpResponseCode LIKE '5%' since 3 hours ago",
      "nrql_trend"    = "select rate(count(*), 1 minute) as `5XX RPM` from Transaction where appName = 'laundry-dash-deliver-prod' and httpResponseCode LIKE '5%' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Transactions",
      "endpoint_name" = "Pickup API",
      "row"           = "5",
      "col"           = "7",
      "thresh_warn"   = "15",
      "thresh_error"  = "5",
      "nrql_bill"     = "select rate(count(*), 1 minute) as `Request RPM` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago",
      "nrql_trend"    = "select rate(count(*), 1 minute) as `Reauest RPM` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    },
    {
      "metric"        = "Saturation via Apdex",
      "endpoint_name" = "Pickup API",
      "row"           = "5",
      "col"           = "10",
      "thresh_warn"   = "0.85",
      "thresh_error"  = "0.75"
      "nrql_bill"     = "select apdex(duration, t: 5) as `apdex(5s)` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago",
      "nrql_trend"    = "select apdex(duration, t: 5) as `apdex(5s)` from Transaction where appName = 'laundry-dash-pickup-prod' since 3 hours ago compare with 1 day ago timeseries auto"
    }
  ]
}
