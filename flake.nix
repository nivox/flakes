{
  description = "Flake templates";

  outputs = { self }: {
    templates = {

      rust = {
        path = ./rust;
        description = "Rust dev template";
      };

      scale = {
        path = ./scala;
        description = "Scala dev template";
      };

    };
  };
}
