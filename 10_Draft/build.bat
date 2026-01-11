@echo off
set adoc=installing_openshift_local.adoc
call asciidoctor %adoc%
call asciidoctor-pdf -a pdf-theme=default-with-font-fallbacks -a scripts=cjk %adoc%
call asciidoctor-epub3 %adoc%
call asciidoctor --backend docbook %adoc%
echo done
