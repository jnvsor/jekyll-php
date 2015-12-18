module Jekyll
  class Page
    def destination(dest)
      path = site.in_dest_dir(dest, URL.unescape_path(url))

      if output and /<\?(=.+\?>|php)/i.match(output)
        path = File.join(path, "index.php") if url.end_with?("/")
      else
        path = File.join(path, "index.html") if url.end_with?("/")
        path << output_ext unless path.end_with?(output_ext)
      end

      path
    end
  end
end
