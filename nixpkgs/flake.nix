{
    inputs = {
        rnix-lsp.url = "github:nix-community/rnix-lsp";
        nixpkgs.url = "nixpkgs/nixpkgs-unstable";
        utils.url = "github:numtide/flake-utils";
        nixfmt.url = "github:nix-community/nixpkgs-fmt";
    }
    outputs = {
    self,
    nixpkgs,
    rnix-lsp,
    nixfmt,
    utils,
  }:
    let pkgs = nixpkgs.legacyPackages."${system}"; in 
    rec {
        packages.cloudflared = pkgs.cloudflared;
        packages.nix = pkgs.nixUnstable;
        packages.rnix-lsp = packages.rnix-lsp;
        packages.nixpkgs-fmt = packages.nixpkgs-fmt;
        packages.sn0int = pkgs.sn0int

    }
    
}