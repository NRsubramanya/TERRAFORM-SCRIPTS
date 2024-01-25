output "resource-ids" {
  value = <<-EOT
  Environment ID:   ${confluent_environment.development.id}
  Kafka Cluster ID: ${confluent_kafka_cluster.basic.id}
 # Kafka topic name: ${confluent_kafka_topic.orders.topic_name}

  Service Accounts and their Kafka API Keys (API Keys inherit the permissions granted to the owner):
  ${confluent_service_account.app-manager.display_name}:                     ${confluent_service_account.app-manager.id}
  ${confluent_service_account.app-manager.display_name}'s Kafka API Key:     "${confluent_api_key.api-key.id}"
  ${confluent_service_account.app-manager.display_name}'s Kafka API Secret:  "${confluent_api_key.api-key.secret}"
 
  EOT
  sensitive = true
}
