//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (11)
//--------------------------------------------------------------------------------
pub const BROADCAST_SYSTEM_MESSAGE_FLAGS = enum(u32) {
    ALLOWSFW = 128,
    FLUSHDISK = 4,
    FORCEIFHUNG = 32,
    IGNORECURRENTTASK = 2,
    NOHANG = 8,
    NOTIMEOUTIFNOTHUNG = 64,
    POSTMESSAGE = 16,
    QUERY = 1,
    SENDNOTIFYMESSAGE = 256,
    LUID = 1024,
    RETURNHDESK = 512,
    _,
    pub fn initFlags(o: struct {
        ALLOWSFW: u1 = 0,
        FLUSHDISK: u1 = 0,
        FORCEIFHUNG: u1 = 0,
        IGNORECURRENTTASK: u1 = 0,
        NOHANG: u1 = 0,
        NOTIMEOUTIFNOTHUNG: u1 = 0,
        POSTMESSAGE: u1 = 0,
        QUERY: u1 = 0,
        SENDNOTIFYMESSAGE: u1 = 0,
        LUID: u1 = 0,
        RETURNHDESK: u1 = 0,
    }) BROADCAST_SYSTEM_MESSAGE_FLAGS {
        return @as(BROADCAST_SYSTEM_MESSAGE_FLAGS, @enumFromInt((if (o.ALLOWSFW == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.ALLOWSFW) else 0) | (if (o.FLUSHDISK == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.FLUSHDISK) else 0) | (if (o.FORCEIFHUNG == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.FORCEIFHUNG) else 0) | (if (o.IGNORECURRENTTASK == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.IGNORECURRENTTASK) else 0) | (if (o.NOHANG == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.NOHANG) else 0) | (if (o.NOTIMEOUTIFNOTHUNG == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.NOTIMEOUTIFNOTHUNG) else 0) | (if (o.POSTMESSAGE == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.POSTMESSAGE) else 0) | (if (o.QUERY == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.QUERY) else 0) | (if (o.SENDNOTIFYMESSAGE == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.SENDNOTIFYMESSAGE) else 0) | (if (o.LUID == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.LUID) else 0) | (if (o.RETURNHDESK == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_FLAGS.RETURNHDESK) else 0)));
    }
};
pub const BSF_ALLOWSFW = BROADCAST_SYSTEM_MESSAGE_FLAGS.ALLOWSFW;
pub const BSF_FLUSHDISK = BROADCAST_SYSTEM_MESSAGE_FLAGS.FLUSHDISK;
pub const BSF_FORCEIFHUNG = BROADCAST_SYSTEM_MESSAGE_FLAGS.FORCEIFHUNG;
pub const BSF_IGNORECURRENTTASK = BROADCAST_SYSTEM_MESSAGE_FLAGS.IGNORECURRENTTASK;
pub const BSF_NOHANG = BROADCAST_SYSTEM_MESSAGE_FLAGS.NOHANG;
pub const BSF_NOTIMEOUTIFNOTHUNG = BROADCAST_SYSTEM_MESSAGE_FLAGS.NOTIMEOUTIFNOTHUNG;
pub const BSF_POSTMESSAGE = BROADCAST_SYSTEM_MESSAGE_FLAGS.POSTMESSAGE;
pub const BSF_QUERY = BROADCAST_SYSTEM_MESSAGE_FLAGS.QUERY;
pub const BSF_SENDNOTIFYMESSAGE = BROADCAST_SYSTEM_MESSAGE_FLAGS.SENDNOTIFYMESSAGE;
pub const BSF_LUID = BROADCAST_SYSTEM_MESSAGE_FLAGS.LUID;
pub const BSF_RETURNHDESK = BROADCAST_SYSTEM_MESSAGE_FLAGS.RETURNHDESK;

pub const BROADCAST_SYSTEM_MESSAGE_INFO = enum(u32) {
    LLCOMPONENTS = 0,
    LLDESKTOPS = 16,
    PPLICATIONS = 8,
    _,
    pub fn initFlags(o: struct {
        LLCOMPONENTS: u1 = 0,
        LLDESKTOPS: u1 = 0,
        PPLICATIONS: u1 = 0,
    }) BROADCAST_SYSTEM_MESSAGE_INFO {
        return @as(BROADCAST_SYSTEM_MESSAGE_INFO, @enumFromInt((if (o.LLCOMPONENTS == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_INFO.LLCOMPONENTS) else 0) | (if (o.LLDESKTOPS == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_INFO.LLDESKTOPS) else 0) | (if (o.PPLICATIONS == 1) @intFromEnum(BROADCAST_SYSTEM_MESSAGE_INFO.PPLICATIONS) else 0)));
    }
};
pub const BSM_ALLCOMPONENTS = BROADCAST_SYSTEM_MESSAGE_INFO.LLCOMPONENTS;
pub const BSM_ALLDESKTOPS = BROADCAST_SYSTEM_MESSAGE_INFO.LLDESKTOPS;
pub const BSM_APPLICATIONS = BROADCAST_SYSTEM_MESSAGE_INFO.PPLICATIONS;

pub const USER_OBJECT_INFORMATION_INDEX = enum(u32) {
    FLAGS = 1,
    HEAPSIZE = 5,
    IO = 6,
    NAME = 2,
    TYPE = 3,
    USER_SID = 4,
};
pub const UOI_FLAGS = USER_OBJECT_INFORMATION_INDEX.FLAGS;
pub const UOI_HEAPSIZE = USER_OBJECT_INFORMATION_INDEX.HEAPSIZE;
pub const UOI_IO = USER_OBJECT_INFORMATION_INDEX.IO;
pub const UOI_NAME = USER_OBJECT_INFORMATION_INDEX.NAME;
pub const UOI_TYPE = USER_OBJECT_INFORMATION_INDEX.TYPE;
pub const UOI_USER_SID = USER_OBJECT_INFORMATION_INDEX.USER_SID;

pub const WINSTAENUMPROCA = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        param0: ?PSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
    else => *const fn (
        param0: ?PSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
};

pub const WINSTAENUMPROCW = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        param0: ?PWSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
    else => *const fn (
        param0: ?PWSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
};

pub const DESKTOPENUMPROCA = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        param0: ?PSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
    else => *const fn (
        param0: ?PSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
};

pub const DESKTOPENUMPROCW = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        param0: ?PWSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
    else => *const fn (
        param0: ?PWSTR,
        param1: LPARAM,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
};

// TODO: this type has a FreeFunc 'CloseWindowStation', what can Zig do with this information?
pub const HWINSTA = *opaque {};

// TODO: this type has a FreeFunc 'CloseDesktop', what can Zig do with this information?
pub const HDESK = *opaque {};

pub const USEROBJECTFLAGS = extern struct {
    fInherit: BOOL,
    fReserved: BOOL,
    dwFlags: u32,
};

pub const BSMINFO = extern struct {
    cbSize: u32,
    hdesk: ?HDESK,
    hwnd: ?HWND,
    luid: LUID,
};

//--------------------------------------------------------------------------------
// Section: Functions (31)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CreateDesktopA(
    lpszDesktop: ?[*:0]const u8,
    lpszDevice: ?[*:0]const u8,
    pDevmode: ?*DEVMODEA,
    dwFlags: u32,
    dwDesiredAccess: u32,
    lpsa: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CreateDesktopW(
    lpszDesktop: ?[*:0]const u16,
    lpszDevice: ?[*:0]const u16,
    pDevmode: ?*DEVMODEW,
    dwFlags: u32,
    dwDesiredAccess: u32,
    lpsa: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "user32" fn CreateDesktopExA(
    lpszDesktop: ?[*:0]const u8,
    lpszDevice: ?[*:0]const u8,
    pDevmode: ?*DEVMODEA,
    dwFlags: u32,
    dwDesiredAccess: u32,
    lpsa: ?*SECURITY_ATTRIBUTES,
    ulHeapSize: u32,
    pvoid: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "user32" fn CreateDesktopExW(
    lpszDesktop: ?[*:0]const u16,
    lpszDevice: ?[*:0]const u16,
    pDevmode: ?*DEVMODEW,
    dwFlags: u32,
    dwDesiredAccess: u32,
    lpsa: ?*SECURITY_ATTRIBUTES,
    ulHeapSize: u32,
    pvoid: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn OpenDesktopA(
    lpszDesktop: ?[*:0]const u8,
    dwFlags: u32,
    fInherit: BOOL,
    dwDesiredAccess: u32,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn OpenDesktopW(
    lpszDesktop: ?[*:0]const u16,
    dwFlags: u32,
    fInherit: BOOL,
    dwDesiredAccess: u32,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn OpenInputDesktop(
    dwFlags: u32,
    fInherit: BOOL,
    dwDesiredAccess: u32,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EnumDesktopsA(
    hwinsta: ?HWINSTA,
    lpEnumFunc: ?DESKTOPENUMPROCA,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EnumDesktopsW(
    hwinsta: ?HWINSTA,
    lpEnumFunc: ?DESKTOPENUMPROCW,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EnumDesktopWindows(
    hDesktop: ?HDESK,
    lpfn: ?WNDENUMPROC,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SwitchDesktop(
    hDesktop: ?HDESK,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SetThreadDesktop(
    hDesktop: ?HDESK,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CloseDesktop(
    hDesktop: ?HDESK,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetThreadDesktop(
    dwThreadId: u32,
) callconv(@import("std").os.windows.WINAPI) ?HDESK;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CreateWindowStationA(
    lpwinsta: ?[*:0]const u8,
    dwFlags: u32,
    dwDesiredAccess: u32,
    lpsa: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) ?HWINSTA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CreateWindowStationW(
    lpwinsta: ?[*:0]const u16,
    dwFlags: u32,
    dwDesiredAccess: u32,
    lpsa: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) ?HWINSTA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn OpenWindowStationA(
    lpszWinSta: ?[*:0]const u8,
    fInherit: BOOL,
    dwDesiredAccess: u32,
) callconv(@import("std").os.windows.WINAPI) ?HWINSTA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn OpenWindowStationW(
    lpszWinSta: ?[*:0]const u16,
    fInherit: BOOL,
    dwDesiredAccess: u32,
) callconv(@import("std").os.windows.WINAPI) ?HWINSTA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EnumWindowStationsA(
    lpEnumFunc: ?WINSTAENUMPROCA,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EnumWindowStationsW(
    lpEnumFunc: ?WINSTAENUMPROCW,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CloseWindowStation(
    hWinSta: ?HWINSTA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SetProcessWindowStation(
    hWinSta: ?HWINSTA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetProcessWindowStation() callconv(@import("std").os.windows.WINAPI) ?HWINSTA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetUserObjectInformationA(
    hObj: ?HANDLE,
    nIndex: USER_OBJECT_INFORMATION_INDEX,
    // TODO: what to do with BytesParamIndex 3?
    pvInfo: ?*anyopaque,
    nLength: u32,
    lpnLengthNeeded: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetUserObjectInformationW(
    hObj: ?HANDLE,
    nIndex: USER_OBJECT_INFORMATION_INDEX,
    // TODO: what to do with BytesParamIndex 3?
    pvInfo: ?*anyopaque,
    nLength: u32,
    lpnLengthNeeded: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SetUserObjectInformationA(
    hObj: ?HANDLE,
    nIndex: i32,
    // TODO: what to do with BytesParamIndex 3?
    pvInfo: ?*anyopaque,
    nLength: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SetUserObjectInformationW(
    hObj: ?HANDLE,
    nIndex: i32,
    // TODO: what to do with BytesParamIndex 3?
    pvInfo: ?*anyopaque,
    nLength: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "user32" fn BroadcastSystemMessageExA(
    flags: BROADCAST_SYSTEM_MESSAGE_FLAGS,
    lpInfo: ?*BROADCAST_SYSTEM_MESSAGE_INFO,
    Msg: u32,
    wParam: WPARAM,
    lParam: LPARAM,
    pbsmInfo: ?*BSMINFO,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "user32" fn BroadcastSystemMessageExW(
    flags: BROADCAST_SYSTEM_MESSAGE_FLAGS,
    lpInfo: ?*BROADCAST_SYSTEM_MESSAGE_INFO,
    Msg: u32,
    wParam: WPARAM,
    lParam: LPARAM,
    pbsmInfo: ?*BSMINFO,
) callconv(@import("std").os.windows.WINAPI) i32;

pub extern "user32" fn BroadcastSystemMessageA(
    flags: u32,
    lpInfo: ?*u32,
    Msg: u32,
    wParam: WPARAM,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn BroadcastSystemMessageW(
    flags: BROADCAST_SYSTEM_MESSAGE_FLAGS,
    lpInfo: ?*BROADCAST_SYSTEM_MESSAGE_INFO,
    Msg: u32,
    wParam: WPARAM,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) i32;

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (13)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const WINSTAENUMPROC = thismodule.WINSTAENUMPROCA;
        pub const DESKTOPENUMPROC = thismodule.DESKTOPENUMPROCA;
        pub const CreateDesktop = thismodule.CreateDesktopA;
        pub const CreateDesktopEx = thismodule.CreateDesktopExA;
        pub const OpenDesktop = thismodule.OpenDesktopA;
        pub const EnumDesktops = thismodule.EnumDesktopsA;
        pub const CreateWindowStation = thismodule.CreateWindowStationA;
        pub const OpenWindowStation = thismodule.OpenWindowStationA;
        pub const EnumWindowStations = thismodule.EnumWindowStationsA;
        pub const GetUserObjectInformation = thismodule.GetUserObjectInformationA;
        pub const SetUserObjectInformation = thismodule.SetUserObjectInformationA;
        pub const BroadcastSystemMessageEx = thismodule.BroadcastSystemMessageExA;
        pub const BroadcastSystemMessage = thismodule.BroadcastSystemMessageA;
    },
    .wide => struct {
        pub const WINSTAENUMPROC = thismodule.WINSTAENUMPROCW;
        pub const DESKTOPENUMPROC = thismodule.DESKTOPENUMPROCW;
        pub const CreateDesktop = thismodule.CreateDesktopW;
        pub const CreateDesktopEx = thismodule.CreateDesktopExW;
        pub const OpenDesktop = thismodule.OpenDesktopW;
        pub const EnumDesktops = thismodule.EnumDesktopsW;
        pub const CreateWindowStation = thismodule.CreateWindowStationW;
        pub const OpenWindowStation = thismodule.OpenWindowStationW;
        pub const EnumWindowStations = thismodule.EnumWindowStationsW;
        pub const GetUserObjectInformation = thismodule.GetUserObjectInformationW;
        pub const SetUserObjectInformation = thismodule.SetUserObjectInformationW;
        pub const BroadcastSystemMessageEx = thismodule.BroadcastSystemMessageExW;
        pub const BroadcastSystemMessage = thismodule.BroadcastSystemMessageW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const WINSTAENUMPROC = *opaque {};
        pub const DESKTOPENUMPROC = *opaque {};
        pub const CreateDesktop = *opaque {};
        pub const CreateDesktopEx = *opaque {};
        pub const OpenDesktop = *opaque {};
        pub const EnumDesktops = *opaque {};
        pub const CreateWindowStation = *opaque {};
        pub const OpenWindowStation = *opaque {};
        pub const EnumWindowStations = *opaque {};
        pub const GetUserObjectInformation = *opaque {};
        pub const SetUserObjectInformation = *opaque {};
        pub const BroadcastSystemMessageEx = *opaque {};
        pub const BroadcastSystemMessage = *opaque {};
    } else struct {
        pub const WINSTAENUMPROC = @compileError("'WINSTAENUMPROC' requires that UNICODE be set to true or false in the root module");
        pub const DESKTOPENUMPROC = @compileError("'DESKTOPENUMPROC' requires that UNICODE be set to true or false in the root module");
        pub const CreateDesktop = @compileError("'CreateDesktop' requires that UNICODE be set to true or false in the root module");
        pub const CreateDesktopEx = @compileError("'CreateDesktopEx' requires that UNICODE be set to true or false in the root module");
        pub const OpenDesktop = @compileError("'OpenDesktop' requires that UNICODE be set to true or false in the root module");
        pub const EnumDesktops = @compileError("'EnumDesktops' requires that UNICODE be set to true or false in the root module");
        pub const CreateWindowStation = @compileError("'CreateWindowStation' requires that UNICODE be set to true or false in the root module");
        pub const OpenWindowStation = @compileError("'OpenWindowStation' requires that UNICODE be set to true or false in the root module");
        pub const EnumWindowStations = @compileError("'EnumWindowStations' requires that UNICODE be set to true or false in the root module");
        pub const GetUserObjectInformation = @compileError("'GetUserObjectInformation' requires that UNICODE be set to true or false in the root module");
        pub const SetUserObjectInformation = @compileError("'SetUserObjectInformation' requires that UNICODE be set to true or false in the root module");
        pub const BroadcastSystemMessageEx = @compileError("'BroadcastSystemMessageEx' requires that UNICODE be set to true or false in the root module");
        pub const BroadcastSystemMessage = @compileError("'BroadcastSystemMessage' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (12)
//--------------------------------------------------------------------------------
const BOOL = @import("../foundation.zig").BOOL;
const DEVMODEA = @import("../graphics/gdi.zig").DEVMODEA;
const DEVMODEW = @import("../graphics/gdi.zig").DEVMODEW;
const HANDLE = @import("../foundation.zig").HANDLE;
const HWND = @import("../foundation.zig").HWND;
const LPARAM = @import("../foundation.zig").LPARAM;
const LUID = @import("../foundation.zig").LUID;
const PSTR = @import("../foundation.zig").PSTR;
const PWSTR = @import("../foundation.zig").PWSTR;
const SECURITY_ATTRIBUTES = @import("../security.zig").SECURITY_ATTRIBUTES;
const WNDENUMPROC = @import("../ui/windows_and_messaging.zig").WNDENUMPROC;
const WPARAM = @import("../foundation.zig").WPARAM;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "WINSTAENUMPROCA")) {
        _ = WINSTAENUMPROCA;
    }
    if (@hasDecl(@This(), "WINSTAENUMPROCW")) {
        _ = WINSTAENUMPROCW;
    }
    if (@hasDecl(@This(), "DESKTOPENUMPROCA")) {
        _ = DESKTOPENUMPROCA;
    }
    if (@hasDecl(@This(), "DESKTOPENUMPROCW")) {
        _ = DESKTOPENUMPROCW;
    }

    @setEvalBranchQuota(comptime @import("std").meta.declarations(@This()).len * 3);

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = @field(@This(), decl.name);
        }
    }
}
