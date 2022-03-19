use pretty_assertions::assert_eq;
use reqwest::{Client, StatusCode};

fn spawn_app() {
    let server = zero2prod::run().expect("Failed to bind address");

    let _ = tokio::spawn(server);
}

#[tokio::test]
async fn health_check_succeeds() {
    spawn_app();

    let client = Client::new();
    let response = client
        .get("http://127.0.0.1:8080/health-check")
        .send()
        .await
        .expect("Failed to execute request");

    assert_eq!(response.status(), StatusCode::OK);
    assert_eq!(response.content_length(), Some(0));
}
