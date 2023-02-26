variable "api_golden_signals" {
  type        = map(any)
  description = "Describes golden signals configuration for endpoints supporting laundry dash "
}
variable "nr_account_id" {
  type        = number
  description = "New Relic account identifier"
  default     = 0
}
variable "nr_api_key" {
  type        = string
  description = "New relic insights api key"
  default     = ""
}
variable "nr_dash_build_version" {
  type        = string
  description = "Our dashboard build_version"
  default     = ""
}
variable "nr_dash_build_name" {
  type        = string
  description = "Name of gitbhub build"
  default     = ""
}
