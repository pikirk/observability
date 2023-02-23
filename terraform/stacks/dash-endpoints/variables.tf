variable "api_golden_signals" {
  type        = map(any)
  description = "Describes golden signals configuration for endpoints supporting laundry dash "
}
variable "nr_account_id" {
  type        = string
  description = "New Relic account identifier"
}
variable "nr_api_key" {
  type        = string
  description = "New relic insights api key"
}
