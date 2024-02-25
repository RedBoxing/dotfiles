use std::{time::Duration, process::Output};

use playerctl::PlayerCtl;

struct Output {
    text: String?,
    class: String?,
    alt: String?,
    tooltip: String?,
    percentage: i32?
};

fn main() {
    loop {
        let metadata = PlayerCtl::metadata();
        let output = Output {
            text: format!("{} - {}", metadata.title, metadata.artist),
            percentage: metadata
        }
        println!("{} - {}", metadata.title, metadata.artist);
        std::thread::sleep(Duration::from_secs(10));
    }
}
