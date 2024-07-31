{ pkgs, ... }: {
  idx.previews = {
    enable = true;
    previews = {
      web = {
        command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
        cwd = "website";
        manager = "flutter";
      };
    };
  };
}