#!/bin/bash
adoc=installing_openshift_local.adoc
asciidoctor ${adoc} 
asciidoctor-pdf -a pdf-theme=default-with-font-fallbacks -a scripts=cjk ${adoc} 
asciidoctor-epub3 ${adoc}
asciidoctor --backend docbook ${adoc}
echo done
