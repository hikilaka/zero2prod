use actix_web::dev::Server;
use actix_web::{middleware::Logger, web, App, HttpResponse, HttpServer, Responder};
use env_logger::{init_from_env, Env};

pub async fn health_check() -> impl Responder {
    HttpResponse::Ok()
}

pub fn run() -> Result<Server, std::io::Error> {
    init_from_env(Env::default().default_filter_or("info"));

    let server = HttpServer::new(|| {
        App::new()
            .wrap(Logger::default())
            .route("/health-check", web::get().to(health_check))
    })
    .bind(("127.0.0.1", 8080))?
    .run();

    Ok(server)
}
