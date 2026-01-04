module "homolog" {
    source = "../../infra"

    nome_repositorio = "homolog"
    cargoIAM = "homolog"
    ambiante = "homolog"
    imagem="abatistas/cursoci2:latest"
}

output "IP_alb" {
  value = module.homolog.IP
}
