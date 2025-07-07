# Devcontainer with `kubectl` and Teleport Client

This repository provides a simple [Devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) setup with:

- `kubectl` pre-installed
- Teleport client (`tsh`) pre-installed
- `k9s`pre-installed 

Based on Ubuntu 22 (`bash` and `zsh` pre-installed).

---

## Prerequisites

Before using this project, make sure the following are installed on your machine:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Rancher Desktop](https://rancherdesktop.io/) (used to provide a local Kubernetes backend and container runtime)

---

## Getting Started

1. **Clone this repository:**

   ```bash
   git clone https://github.com/alexandernikiforov/k8s-devcontainer.git

2. **Open in Visual Studio Code:**

   * Launch VS Code
   * Open the cloned folder via `File > Open Folder...`
     * If prompted, click "Reopen in Container" 
     * Or manually open using the Command Palette: F1 → Dev Containers: Reopen in Container
   * Wait for the container to build. The initial build may take a couple of minutes. You will need to press ENTER to accept the teleport client settings.

3. **Start working**
 
    kubectl and tsh are ready to use inside the Devcontainer terminal.
      ```bash
      tsh login --proxy=<teleport-host>:443 <teleport-host>
      tsh kube login <cluster-name>
      kubectl get ns
      
      # you also may run k9s
      k9s
      ```
  
