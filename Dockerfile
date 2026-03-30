FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-dfonkoukuete-creator/
RUN rm -rf /usr/share/nginx/html/portfolio-dfonkoukuete-creator/*

COPY . /usr/share/nginx/html/portfolio-dfonkoukuete-creator/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
