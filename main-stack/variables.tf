variable "tags"{
    type = map(string)
    default = {
        Environment = "production"
        Project     = "devops-na-nuvem"
    }
}

variable "assum_role" {
    type = string
    default = "arn:aws:iam::913524941616:role/DevopsNaNuvem-5281d9b4-486e-4aef-9c81-122e51b721ca" 
}

variable "region" {
    type = string
    default = "us-west-1"
  
}

variable "queues" {
    type = list(object({
        name                      = string
        delay_seconds             = number
        max_message_size          = number
        message_retention_seconds = number
        receive_wait_time_seconds = number
    }))

    default = [
        {
            name                      = "devops-na-nuvem-queue-01"
            delay_seconds             = 90
            max_message_size          = 2048
            message_retention_seconds = 86400
            receive_wait_time_seconds = 10
        },
        {
            name                      = "devops-na-nuvem-queue-02"
            delay_seconds             = 90
            max_message_size          = 2048
            message_retention_seconds = 86400
            receive_wait_time_seconds = 10
        }
    ]
}