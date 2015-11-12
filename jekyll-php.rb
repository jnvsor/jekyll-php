module Jekyll
  class Page
    def destination(dest)
      path = site.in_dest_dir(dest, URL.unescape_path(url))
      if url.end_with?("/")
        if output_ext == ".php"
          path = File.join(path, "index.php")
        else
          path = File.join(path, "index.html")
        end
      end
      path << output_ext unless path.end_with?(output_ext)
      path
    end
  end
end
