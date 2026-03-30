FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-dfonkoukuete-creator/
RUN rm -rf /usr/share/nginx/html/portfolio-dfonkoukuete-creator/*

COPY . /usr/share/nginx/html/portfolio-dfonkoukuete-creator/

RUN sed -i 's|root   /usr/share/nginx/html;|root   /usr/share/nginx/html/portfolio-dfonkoukuete-creator;|g' /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
