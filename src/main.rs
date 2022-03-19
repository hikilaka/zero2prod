#[tokio::main]
async fn main() -> std::io::Result<()> {
    zero2prod::run()?.await
}
