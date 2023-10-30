resource "kubernetes_deployment" "app" {
  depends_on = [kubernetes_namespace.ns]
  metadata {
    name = "app"
    namespace = var.env
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app"
      }
    }

    template {
      metadata {
        labels = {
          app = "app"
        }
      }

      spec {

        container {
          image = "nginx:1.7.8"
          name  = "app"
        }
      }
    }
  }
}
