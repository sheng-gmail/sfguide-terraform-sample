terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.32"
    }
  }
}

provider "snowflake" {
  alias = "sys_admin"
  role  = "SYSADMIN"
}

resource "snowflake_warehouse" "warehouse" {
  provider       = snowflake.sys_admin
  name           = "TF_DEMO_2"
  warehouse_size = "large"

  auto_suspend = 60
}
