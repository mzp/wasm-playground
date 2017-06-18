#![feature(lang_items)]
#![no_std]
#![no_main]

#[no_mangle]
pub extern fn add(x : i32, y : i32) -> i32 {
    return x + y;
}

#[lang = "eh_personality"] extern fn eh_personality() {}
#[lang = "panic_fmt"] fn panic_fmt() -> ! { loop {} }
