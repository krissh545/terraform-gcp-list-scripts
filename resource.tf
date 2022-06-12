resource "google_compute_network" "my-vpcnetwork" {
  name                          = var.networkname
  auto_create_subnetworks       = var.autocreate
  routing_mode                  = var.routing
  mtu                           = var.mtu
}

resource "google_compute_subnetwork" "my-subnetwork" {

count = length(var.subnetname)
    name                        = var.subnetname[count.index]
    network                     = google_compute_network.my-vpcnetwork.id
    ip_cidr_range               = var.range[count.index]
    region                      = var.region


  
}