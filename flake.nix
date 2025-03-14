{
  description = "Flake templates";

  outputs = { self }: {
    templates = {

      rust = {
        path = ./rust;
        description = "Rust dev template";
      };

    };
  };
}
