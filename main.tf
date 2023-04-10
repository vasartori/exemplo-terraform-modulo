resource "google_compute_instance" "default" {
  count        = var.size
  name         = "${var.prefixo_da_vm}-${count.index}"
  machine_type = var.tipo_de_vm
  zone         = var.zona
  tags         = var.network_tags

  boot_disk {
    initialize_params {
      image = var.imagem
    }
  }

  # Install Flask
  metadata_startup_script = var.metadata_startup_script

  network_interface {
    network = var.nome_da_vpc
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}


