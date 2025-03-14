{
  description = "Flake templates";

  outputs = { self }: {
    templates = {

      rust = {
        path = ./rust;
        description = "Rust dev template";
      };

      scala = {
        path = ./scala;
        description = "Scala dev template";
      };

    };
  };
}
