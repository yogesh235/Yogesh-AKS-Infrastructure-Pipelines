module "Storage_Information" {
  source = "../../Module/Strorage_Acc"
  RG_Info=var.RG_Info
  Recovery_Service= var.Recovery_Service
  storage_Info= var.storage_Info
  container= var.container
}