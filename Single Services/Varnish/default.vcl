vcl 4.0;

backend default {
  .host = "web";
  .port = "80";
}


sub vcl_recv {

  #Arquivos grandes não serão cacheados
  if (req.url ~ "^[^?]*\.(7z|avi|bz2|flac|flv|gz|mka|mkv|mov|mp3|mp4|mpeg|mpg|ogg|ogm|opus|rar|tar|tgz|tbz|txz|wav|webm|xz|zip)(\?.*)?$") {
    unset req.http.Cookie;
    return (hash);
  }
}

#Tratamento das Responses
sub vcl_backend_response {
  # Criar cache para todos os aruivos est[ativos]
  if (bereq.url ~ "^[^?]*\.(7z|bmp|bz2|css|csv|scss|docx|eot|flac|flv|gif|gz|ico|jpeg|jpg|js|less|mp3|mp4|mpeg|mpg|otf|ogg|pdf|png|svg|svgz|swf|tar|tbz|tgz|ttf|txt|txz|wav|webm|webp|woff|woff2|xls|xlsx|xml|xz|zip)(\?.*)?$") {
    unset beresp.http.set-cookie;
  }

  #Streaming de Arquivos grandes
  if (bereq.url ~ "^[^?]*\.(7z|avi|bz2|flac|flv|gz|mka|mkv|mov|mp3|mp4|mpeg|mpg|ogg|ogm|opus|rar|tar|tgz|tbz|txz|wav|webm|xz|zip)(\?.*)?$") {
    unset beresp.http.set-cookie;
    set beresp.do_stream = true;
  }

  #Cache de 6 horas
  set beresp.grace = 6h;

  return (deliver);
}

sub vcl_deliver {
  if (obj.hits > 0) {
    set resp.http.X-Cache = "HIT";
    } else {
      set resp.http.X-Cache = "MISS";
    }

    set resp.http.X-Cache-Hits = obj.hits;

    unset resp.http.X-Powered-By;
    unset resp.http.Server;
    unset resp.http.X-Drupal-Cache;
    unset resp.http.X-Varnish;
    unset resp.http.Via;
    unset resp.http.Link;
    unset resp.http.X-Generator;

    return (deliver);
  }

  #Trata os Hash values dos Requests - Performance
  sub vcl_hash {
    hash_data(req.url);

    if (req.http.host) {
      hash_data(req.http.host);
      } else {
        hash_data(server.ip);
      }

      if (req.http.Cookie) {
        hash_data(req.http.Cookie);
      }
    }

    #Pass Mode
    sub vcl_pass {
      # return (pass);
    }

    #Chama quando o conteúdo solicitado não é encotrado no Cache
    sub vcl_miss {
      return (fetch);
    }
