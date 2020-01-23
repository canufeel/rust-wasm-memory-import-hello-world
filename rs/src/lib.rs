
use core::slice;

extern "C" {
    fn log_val(val: i32);
}

#[no_mangle]
pub extern "C" fn add_one(pointer: *mut i32, ptr_len: i32) {
    for i in unsafe { slice::from_raw_parts_mut(pointer, ptr_len as usize).iter_mut() } {
        *i *= *i;
        unsafe { log_val(*i); }
    }
}