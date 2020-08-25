FROM martialblog/limesurvey:4.3.11_200817-fpm-alpine
LABEL Maintainer="Douglas Andrade <douglasanpa@gmail.com>" \
      Description="Fixes for limesurvey."

RUN sed -i "s/iframe.setAttribute('srcdoc', this._settings.action)/\/\/iframe.setAttribute('srcdoc', this._settings.action)/g" /var/www/html/assets/packages/questions/upload/src/ajaxupload.js
