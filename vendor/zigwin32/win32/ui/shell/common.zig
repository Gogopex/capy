//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (7)
//--------------------------------------------------------------------------------
pub const PERCEIVEDFLAG_UNDEFINED = @as(u32, 0);
pub const PERCEIVEDFLAG_SOFTCODED = @as(u32, 1);
pub const PERCEIVEDFLAG_HARDCODED = @as(u32, 2);
pub const PERCEIVEDFLAG_NATIVESUPPORT = @as(u32, 4);
pub const PERCEIVEDFLAG_GDIPLUS = @as(u32, 16);
pub const PERCEIVEDFLAG_WMSDK = @as(u32, 32);
pub const PERCEIVEDFLAG_ZIPFOLDER = @as(u32, 64);

//--------------------------------------------------------------------------------
// Section: Types (11)
//--------------------------------------------------------------------------------
pub const SHITEMID = extern struct {
    cb: u16 align(1),
    abID: [1]u8 align(1),
};

pub const ITEMIDLIST = extern struct {
    mkid: SHITEMID,
};

pub const STRRET_TYPE = enum(i32) {
    WSTR = 0,
    OFFSET = 1,
    CSTR = 2,
};
pub const STRRET_WSTR = STRRET_TYPE.WSTR;
pub const STRRET_OFFSET = STRRET_TYPE.OFFSET;
pub const STRRET_CSTR = STRRET_TYPE.CSTR;

pub const STRRET = extern struct {
    uType: u32,
    Anonymous: extern union {
        pOleStr: ?PWSTR,
        uOffset: u32,
        cStr: [260]u8,
    },
};

pub const SHELLDETAILS = extern struct {
    fmt: i32 align(1),
    cxChar: i32 align(1),
    str: STRRET align(1),
};

pub const PERCEIVED = enum(i32) {
    FIRST = -3,
    // CUSTOM = -3, this enum value conflicts with FIRST
    UNSPECIFIED = -2,
    FOLDER = -1,
    UNKNOWN = 0,
    TEXT = 1,
    IMAGE = 2,
    AUDIO = 3,
    VIDEO = 4,
    COMPRESSED = 5,
    DOCUMENT = 6,
    SYSTEM = 7,
    APPLICATION = 8,
    GAMEMEDIA = 9,
    CONTACTS = 10,
    // LAST = 10, this enum value conflicts with CONTACTS
};
pub const PERCEIVED_TYPE_FIRST = PERCEIVED.FIRST;
pub const PERCEIVED_TYPE_CUSTOM = PERCEIVED.FIRST;
pub const PERCEIVED_TYPE_UNSPECIFIED = PERCEIVED.UNSPECIFIED;
pub const PERCEIVED_TYPE_FOLDER = PERCEIVED.FOLDER;
pub const PERCEIVED_TYPE_UNKNOWN = PERCEIVED.UNKNOWN;
pub const PERCEIVED_TYPE_TEXT = PERCEIVED.TEXT;
pub const PERCEIVED_TYPE_IMAGE = PERCEIVED.IMAGE;
pub const PERCEIVED_TYPE_AUDIO = PERCEIVED.AUDIO;
pub const PERCEIVED_TYPE_VIDEO = PERCEIVED.VIDEO;
pub const PERCEIVED_TYPE_COMPRESSED = PERCEIVED.COMPRESSED;
pub const PERCEIVED_TYPE_DOCUMENT = PERCEIVED.DOCUMENT;
pub const PERCEIVED_TYPE_SYSTEM = PERCEIVED.SYSTEM;
pub const PERCEIVED_TYPE_APPLICATION = PERCEIVED.APPLICATION;
pub const PERCEIVED_TYPE_GAMEMEDIA = PERCEIVED.GAMEMEDIA;
pub const PERCEIVED_TYPE_CONTACTS = PERCEIVED.CONTACTS;
pub const PERCEIVED_TYPE_LAST = PERCEIVED.CONTACTS;

pub const COMDLG_FILTERSPEC = extern struct {
    pszName: ?[*:0]const u16,
    pszSpec: ?[*:0]const u16,
};

pub const SHCOLSTATE = enum(i32) {
    DEFAULT = 0,
    TYPE_STR = 1,
    TYPE_INT = 2,
    TYPE_DATE = 3,
    TYPEMASK = 15,
    ONBYDEFAULT = 16,
    SLOW = 32,
    EXTENDED = 64,
    SECONDARYUI = 128,
    HIDDEN = 256,
    PREFER_VARCMP = 512,
    PREFER_FMTCMP = 1024,
    NOSORTBYFOLDERNESS = 2048,
    VIEWONLY = 65536,
    BATCHREAD = 131072,
    NO_GROUPBY = 262144,
    FIXED_WIDTH = 4096,
    NODPISCALE = 8192,
    FIXED_RATIO = 16384,
    DISPLAYMASK = 61440,
};
pub const SHCOLSTATE_DEFAULT = SHCOLSTATE.DEFAULT;
pub const SHCOLSTATE_TYPE_STR = SHCOLSTATE.TYPE_STR;
pub const SHCOLSTATE_TYPE_INT = SHCOLSTATE.TYPE_INT;
pub const SHCOLSTATE_TYPE_DATE = SHCOLSTATE.TYPE_DATE;
pub const SHCOLSTATE_TYPEMASK = SHCOLSTATE.TYPEMASK;
pub const SHCOLSTATE_ONBYDEFAULT = SHCOLSTATE.ONBYDEFAULT;
pub const SHCOLSTATE_SLOW = SHCOLSTATE.SLOW;
pub const SHCOLSTATE_EXTENDED = SHCOLSTATE.EXTENDED;
pub const SHCOLSTATE_SECONDARYUI = SHCOLSTATE.SECONDARYUI;
pub const SHCOLSTATE_HIDDEN = SHCOLSTATE.HIDDEN;
pub const SHCOLSTATE_PREFER_VARCMP = SHCOLSTATE.PREFER_VARCMP;
pub const SHCOLSTATE_PREFER_FMTCMP = SHCOLSTATE.PREFER_FMTCMP;
pub const SHCOLSTATE_NOSORTBYFOLDERNESS = SHCOLSTATE.NOSORTBYFOLDERNESS;
pub const SHCOLSTATE_VIEWONLY = SHCOLSTATE.VIEWONLY;
pub const SHCOLSTATE_BATCHREAD = SHCOLSTATE.BATCHREAD;
pub const SHCOLSTATE_NO_GROUPBY = SHCOLSTATE.NO_GROUPBY;
pub const SHCOLSTATE_FIXED_WIDTH = SHCOLSTATE.FIXED_WIDTH;
pub const SHCOLSTATE_NODPISCALE = SHCOLSTATE.NODPISCALE;
pub const SHCOLSTATE_FIXED_RATIO = SHCOLSTATE.FIXED_RATIO;
pub const SHCOLSTATE_DISPLAYMASK = SHCOLSTATE.DISPLAYMASK;

pub const DEVICE_SCALE_FACTOR = enum(i32) {
    DEVICE_SCALE_FACTOR_INVALID = 0,
    SCALE_100_PERCENT = 100,
    SCALE_120_PERCENT = 120,
    SCALE_125_PERCENT = 125,
    SCALE_140_PERCENT = 140,
    SCALE_150_PERCENT = 150,
    SCALE_160_PERCENT = 160,
    SCALE_175_PERCENT = 175,
    SCALE_180_PERCENT = 180,
    SCALE_200_PERCENT = 200,
    SCALE_225_PERCENT = 225,
    SCALE_250_PERCENT = 250,
    SCALE_300_PERCENT = 300,
    SCALE_350_PERCENT = 350,
    SCALE_400_PERCENT = 400,
    SCALE_450_PERCENT = 450,
    SCALE_500_PERCENT = 500,
};
pub const DEVICE_SCALE_FACTOR_INVALID = DEVICE_SCALE_FACTOR.DEVICE_SCALE_FACTOR_INVALID;
pub const SCALE_100_PERCENT = DEVICE_SCALE_FACTOR.SCALE_100_PERCENT;
pub const SCALE_120_PERCENT = DEVICE_SCALE_FACTOR.SCALE_120_PERCENT;
pub const SCALE_125_PERCENT = DEVICE_SCALE_FACTOR.SCALE_125_PERCENT;
pub const SCALE_140_PERCENT = DEVICE_SCALE_FACTOR.SCALE_140_PERCENT;
pub const SCALE_150_PERCENT = DEVICE_SCALE_FACTOR.SCALE_150_PERCENT;
pub const SCALE_160_PERCENT = DEVICE_SCALE_FACTOR.SCALE_160_PERCENT;
pub const SCALE_175_PERCENT = DEVICE_SCALE_FACTOR.SCALE_175_PERCENT;
pub const SCALE_180_PERCENT = DEVICE_SCALE_FACTOR.SCALE_180_PERCENT;
pub const SCALE_200_PERCENT = DEVICE_SCALE_FACTOR.SCALE_200_PERCENT;
pub const SCALE_225_PERCENT = DEVICE_SCALE_FACTOR.SCALE_225_PERCENT;
pub const SCALE_250_PERCENT = DEVICE_SCALE_FACTOR.SCALE_250_PERCENT;
pub const SCALE_300_PERCENT = DEVICE_SCALE_FACTOR.SCALE_300_PERCENT;
pub const SCALE_350_PERCENT = DEVICE_SCALE_FACTOR.SCALE_350_PERCENT;
pub const SCALE_400_PERCENT = DEVICE_SCALE_FACTOR.SCALE_400_PERCENT;
pub const SCALE_450_PERCENT = DEVICE_SCALE_FACTOR.SCALE_450_PERCENT;
pub const SCALE_500_PERCENT = DEVICE_SCALE_FACTOR.SCALE_500_PERCENT;

// TODO: this type is limited to platform 'windows6.1'
const IID_IObjectArray_Value = Guid.initString("92ca9dcd-5622-4bba-a805-5e9f541bd8c9");
pub const IID_IObjectArray = &IID_IObjectArray_Value;
pub const IObjectArray = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetCount: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IObjectArray,
                pcObjects: ?*u32,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IObjectArray,
                pcObjects: ?*u32,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        GetAt: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IObjectArray,
                uiIndex: u32,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IObjectArray,
                uiIndex: u32,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IUnknown.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IObjectArray_GetCount(self: *const T, pcObjects: ?*u32) HRESULT {
                return @as(*const IObjectArray.VTable, @ptrCast(self.vtable)).GetCount(@as(*const IObjectArray, @ptrCast(self)), pcObjects);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IObjectArray_GetAt(self: *const T, uiIndex: u32, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @as(*const IObjectArray.VTable, @ptrCast(self.vtable)).GetAt(@as(*const IObjectArray, @ptrCast(self)), uiIndex, riid, ppv);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.1'
const IID_IObjectCollection_Value = Guid.initString("5632b1a4-e38a-400a-928a-d4cd63230295");
pub const IID_IObjectCollection = &IID_IObjectCollection_Value;
pub const IObjectCollection = extern struct {
    pub const VTable = extern struct {
        base: IObjectArray.VTable,
        AddObject: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IObjectCollection,
                punk: ?*IUnknown,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IObjectCollection,
                punk: ?*IUnknown,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        AddFromArray: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IObjectCollection,
                poaSource: ?*IObjectArray,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IObjectCollection,
                poaSource: ?*IObjectArray,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        RemoveObjectAt: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IObjectCollection,
                uiIndex: u32,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IObjectCollection,
                uiIndex: u32,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        Clear: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IObjectCollection,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IObjectCollection,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IObjectArray.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IObjectCollection_AddObject(self: *const T, punk: ?*IUnknown) HRESULT {
                return @as(*const IObjectCollection.VTable, @ptrCast(self.vtable)).AddObject(@as(*const IObjectCollection, @ptrCast(self)), punk);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IObjectCollection_AddFromArray(self: *const T, poaSource: ?*IObjectArray) HRESULT {
                return @as(*const IObjectCollection.VTable, @ptrCast(self.vtable)).AddFromArray(@as(*const IObjectCollection, @ptrCast(self)), poaSource);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IObjectCollection_RemoveObjectAt(self: *const T, uiIndex: u32) HRESULT {
                return @as(*const IObjectCollection.VTable, @ptrCast(self.vtable)).RemoveObjectAt(@as(*const IObjectCollection, @ptrCast(self)), uiIndex);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IObjectCollection_Clear(self: *const T) HRESULT {
                return @as(*const IObjectCollection.VTable, @ptrCast(self.vtable)).Clear(@as(*const IObjectCollection, @ptrCast(self)));
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../../zig.zig").unicode_mode) {
    .ansi => struct {},
    .wide => struct {},
    .unspecified => if (@import("builtin").is_test) struct {} else struct {},
};
//--------------------------------------------------------------------------------
// Section: Imports (4)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const HRESULT = @import("../../foundation.zig").HRESULT;
const IUnknown = @import("../../system/com.zig").IUnknown;
const PWSTR = @import("../../foundation.zig").PWSTR;

test {
    @setEvalBranchQuota(comptime @import("std").meta.declarations(@This()).len * 3);

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = @field(@This(), decl.name);
        }
    }
}
