locals {
  widget_width  = 3
  widget_height = 3

  // flatten the object signal configs defined within the prod.tfvars to a flattened list
  // this supports declarative for-each
  api_signals = flatten([
    for k, signals in var.api_golden_signals : [
      for s in signals : {
        metric        = s.metric
        endpoint_name = s.endpoint_name
        row           = s.row
        col           = s.col
        warn          = s.thresh_warn
        error         = s.thresh_error
        nrql_bill     = s.nrql_bill
        nrql_trend    = s.nrql_trend
      }
    ]
  ])
}
