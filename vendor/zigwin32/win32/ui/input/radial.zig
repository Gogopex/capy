//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (3)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows10.0.14393'
const IID_IRadialControllerInterop_Value = Guid.initString("1b0535c9-57ad-45c1-9d79-ad5c34360513");
pub const IID_IRadialControllerInterop = &IID_IRadialControllerInterop_Value;
pub const IRadialControllerInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateForWindow: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IRadialControllerInterop,
                hwnd: ?HWND,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IRadialControllerInterop,
                hwnd: ?HWND,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IRadialControllerInterop_CreateForWindow(self: *const T, hwnd: ?HWND, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @as(*const IRadialControllerInterop.VTable, @ptrCast(self.vtable)).CreateForWindow(@as(*const IRadialControllerInterop, @ptrCast(self)), hwnd, riid, ppv);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows10.0.14393'
const IID_IRadialControllerConfigurationInterop_Value = Guid.initString("787cdaac-3186-476d-87e4-b9374a7b9970");
pub const IID_IRadialControllerConfigurationInterop = &IID_IRadialControllerConfigurationInterop_Value;
pub const IRadialControllerConfigurationInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetForWindow: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IRadialControllerConfigurationInterop,
                hwnd: ?HWND,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IRadialControllerConfigurationInterop,
                hwnd: ?HWND,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IRadialControllerConfigurationInterop_GetForWindow(self: *const T, hwnd: ?HWND, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @as(*const IRadialControllerConfigurationInterop.VTable, @ptrCast(self.vtable)).GetForWindow(@as(*const IRadialControllerConfigurationInterop, @ptrCast(self)), hwnd, riid, ppv);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_IRadialControllerIndependentInputSourceInterop_Value = Guid.initString("3d577eff-4cee-11e6-b535-001bdc06ab3b");
pub const IID_IRadialControllerIndependentInputSourceInterop = &IID_IRadialControllerIndependentInputSourceInterop_Value;
pub const IRadialControllerIndependentInputSourceInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateForWindow: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IRadialControllerIndependentInputSourceInterop,
                hwnd: ?HWND,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IRadialControllerIndependentInputSourceInterop,
                hwnd: ?HWND,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IRadialControllerIndependentInputSourceInterop_CreateForWindow(self: *const T, hwnd: ?HWND, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @as(*const IRadialControllerIndependentInputSourceInterop.VTable, @ptrCast(self.vtable)).CreateForWindow(@as(*const IRadialControllerIndependentInputSourceInterop, @ptrCast(self)), hwnd, riid, ppv);
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
const HWND = @import("../../foundation.zig").HWND;
const IInspectable = @import("../../system/win_rt.zig").IInspectable;

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
