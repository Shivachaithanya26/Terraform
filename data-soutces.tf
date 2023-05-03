data "external" "instance_type" {
  program = ["python", "C://Users/shiva/Desktop/Apache Droplet terraform/external/name-generator.py"]
}

output "name" {
  value = data.external.instance_type.result
}