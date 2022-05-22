terraform{
	provider {
		azurem = {
			source = "hashicorp/azurem"
			version = "=3.0.0"
		}
	}
}
provider "azurem"{
	features {}
}