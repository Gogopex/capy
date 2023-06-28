//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (15)
//--------------------------------------------------------------------------------
// TODO: this type has a FreeFunc 'HcsCloseOperation', what can Zig do with this information?
pub const HCS_OPERATION = isize;

// TODO: this type has a FreeFunc 'HcsCloseComputeSystem', what can Zig do with this information?
pub const HCS_SYSTEM = isize;

// TODO: this type has a FreeFunc 'HcsCloseProcess', what can Zig do with this information?
pub const HCS_PROCESS = isize;

pub const HCS_OPERATION_TYPE = enum(i32) {
    None = -1,
    Enumerate = 0,
    Create = 1,
    Start = 2,
    Shutdown = 3,
    Pause = 4,
    Resume = 5,
    Save = 6,
    Terminate = 7,
    Modify = 8,
    GetProperties = 9,
    CreateProcess = 10,
    SignalProcess = 11,
    GetProcessInfo = 12,
    GetProcessProperties = 13,
    ModifyProcess = 14,
    Crash = 15,
};
pub const HcsOperationTypeNone = HCS_OPERATION_TYPE.None;
pub const HcsOperationTypeEnumerate = HCS_OPERATION_TYPE.Enumerate;
pub const HcsOperationTypeCreate = HCS_OPERATION_TYPE.Create;
pub const HcsOperationTypeStart = HCS_OPERATION_TYPE.Start;
pub const HcsOperationTypeShutdown = HCS_OPERATION_TYPE.Shutdown;
pub const HcsOperationTypePause = HCS_OPERATION_TYPE.Pause;
pub const HcsOperationTypeResume = HCS_OPERATION_TYPE.Resume;
pub const HcsOperationTypeSave = HCS_OPERATION_TYPE.Save;
pub const HcsOperationTypeTerminate = HCS_OPERATION_TYPE.Terminate;
pub const HcsOperationTypeModify = HCS_OPERATION_TYPE.Modify;
pub const HcsOperationTypeGetProperties = HCS_OPERATION_TYPE.GetProperties;
pub const HcsOperationTypeCreateProcess = HCS_OPERATION_TYPE.CreateProcess;
pub const HcsOperationTypeSignalProcess = HCS_OPERATION_TYPE.SignalProcess;
pub const HcsOperationTypeGetProcessInfo = HCS_OPERATION_TYPE.GetProcessInfo;
pub const HcsOperationTypeGetProcessProperties = HCS_OPERATION_TYPE.GetProcessProperties;
pub const HcsOperationTypeModifyProcess = HCS_OPERATION_TYPE.ModifyProcess;
pub const HcsOperationTypeCrash = HCS_OPERATION_TYPE.Crash;

pub const HCS_OPERATION_COMPLETION = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        operation: HCS_OPERATION,
        context: ?*anyopaque,
    ) callconv(@import("std").os.windows.WINAPI) void,
    else => *const fn (
        operation: HCS_OPERATION,
        context: ?*anyopaque,
    ) callconv(@import("std").os.windows.WINAPI) void,
};

pub const HCS_EVENT_TYPE = enum(i32) {
    Invalid = 0,
    SystemExited = 1,
    SystemCrashInitiated = 2,
    SystemCrashReport = 3,
    SystemRdpEnhancedModeStateChanged = 4,
    SystemSiloJobCreated = 5,
    SystemGuestConnectionClosed = 6,
    ProcessExited = 65536,
    OperationCallback = 16777216,
    ServiceDisconnect = 33554432,
};
pub const HcsEventInvalid = HCS_EVENT_TYPE.Invalid;
pub const HcsEventSystemExited = HCS_EVENT_TYPE.SystemExited;
pub const HcsEventSystemCrashInitiated = HCS_EVENT_TYPE.SystemCrashInitiated;
pub const HcsEventSystemCrashReport = HCS_EVENT_TYPE.SystemCrashReport;
pub const HcsEventSystemRdpEnhancedModeStateChanged = HCS_EVENT_TYPE.SystemRdpEnhancedModeStateChanged;
pub const HcsEventSystemSiloJobCreated = HCS_EVENT_TYPE.SystemSiloJobCreated;
pub const HcsEventSystemGuestConnectionClosed = HCS_EVENT_TYPE.SystemGuestConnectionClosed;
pub const HcsEventProcessExited = HCS_EVENT_TYPE.ProcessExited;
pub const HcsEventOperationCallback = HCS_EVENT_TYPE.OperationCallback;
pub const HcsEventServiceDisconnect = HCS_EVENT_TYPE.ServiceDisconnect;

pub const HCS_EVENT = extern struct {
    Type: HCS_EVENT_TYPE,
    EventData: ?[*:0]const u16,
    Operation: HCS_OPERATION,
};

pub const HCS_EVENT_OPTIONS = enum(u32) {
    None = 0,
    EnableOperationCallbacks = 1,
    _,
    pub fn initFlags(o: struct {
        None: u1 = 0,
        EnableOperationCallbacks: u1 = 0,
    }) HCS_EVENT_OPTIONS {
        return @as(HCS_EVENT_OPTIONS, @enumFromInt((if (o.None == 1) @intFromEnum(HCS_EVENT_OPTIONS.None) else 0) | (if (o.EnableOperationCallbacks == 1) @intFromEnum(HCS_EVENT_OPTIONS.EnableOperationCallbacks) else 0)));
    }
};
pub const HcsEventOptionNone = HCS_EVENT_OPTIONS.None;
pub const HcsEventOptionEnableOperationCallbacks = HCS_EVENT_OPTIONS.EnableOperationCallbacks;

pub const HCS_EVENT_CALLBACK = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        event: ?*HCS_EVENT,
        context: ?*anyopaque,
    ) callconv(@import("std").os.windows.WINAPI) void,
    else => *const fn (
        event: ?*HCS_EVENT,
        context: ?*anyopaque,
    ) callconv(@import("std").os.windows.WINAPI) void,
};

pub const HCS_NOTIFICATION_FLAGS = enum(i32) {
    Success = 0,
    Failure = -2147483648,
};
pub const HcsNotificationFlagSuccess = HCS_NOTIFICATION_FLAGS.Success;
pub const HcsNotificationFlagFailure = HCS_NOTIFICATION_FLAGS.Failure;

pub const HCS_NOTIFICATIONS = enum(i32) {
    Invalid = 0,
    SystemExited = 1,
    SystemCreateCompleted = 2,
    SystemStartCompleted = 3,
    SystemPauseCompleted = 4,
    SystemResumeCompleted = 5,
    SystemCrashReport = 6,
    SystemSiloJobCreated = 7,
    SystemSaveCompleted = 8,
    SystemRdpEnhancedModeStateChanged = 9,
    SystemShutdownFailed = 10,
    // SystemShutdownCompleted = 10, this enum value conflicts with SystemShutdownFailed
    SystemGetPropertiesCompleted = 11,
    SystemModifyCompleted = 12,
    SystemCrashInitiated = 13,
    SystemGuestConnectionClosed = 14,
    SystemOperationCompletion = 15,
    SystemPassThru = 16,
    ProcessExited = 65536,
    ServiceDisconnect = 16777216,
    FlagsReserved = -268435456,
};
pub const HcsNotificationInvalid = HCS_NOTIFICATIONS.Invalid;
pub const HcsNotificationSystemExited = HCS_NOTIFICATIONS.SystemExited;
pub const HcsNotificationSystemCreateCompleted = HCS_NOTIFICATIONS.SystemCreateCompleted;
pub const HcsNotificationSystemStartCompleted = HCS_NOTIFICATIONS.SystemStartCompleted;
pub const HcsNotificationSystemPauseCompleted = HCS_NOTIFICATIONS.SystemPauseCompleted;
pub const HcsNotificationSystemResumeCompleted = HCS_NOTIFICATIONS.SystemResumeCompleted;
pub const HcsNotificationSystemCrashReport = HCS_NOTIFICATIONS.SystemCrashReport;
pub const HcsNotificationSystemSiloJobCreated = HCS_NOTIFICATIONS.SystemSiloJobCreated;
pub const HcsNotificationSystemSaveCompleted = HCS_NOTIFICATIONS.SystemSaveCompleted;
pub const HcsNotificationSystemRdpEnhancedModeStateChanged = HCS_NOTIFICATIONS.SystemRdpEnhancedModeStateChanged;
pub const HcsNotificationSystemShutdownFailed = HCS_NOTIFICATIONS.SystemShutdownFailed;
pub const HcsNotificationSystemShutdownCompleted = HCS_NOTIFICATIONS.SystemShutdownFailed;
pub const HcsNotificationSystemGetPropertiesCompleted = HCS_NOTIFICATIONS.SystemGetPropertiesCompleted;
pub const HcsNotificationSystemModifyCompleted = HCS_NOTIFICATIONS.SystemModifyCompleted;
pub const HcsNotificationSystemCrashInitiated = HCS_NOTIFICATIONS.SystemCrashInitiated;
pub const HcsNotificationSystemGuestConnectionClosed = HCS_NOTIFICATIONS.SystemGuestConnectionClosed;
pub const HcsNotificationSystemOperationCompletion = HCS_NOTIFICATIONS.SystemOperationCompletion;
pub const HcsNotificationSystemPassThru = HCS_NOTIFICATIONS.SystemPassThru;
pub const HcsNotificationProcessExited = HCS_NOTIFICATIONS.ProcessExited;
pub const HcsNotificationServiceDisconnect = HCS_NOTIFICATIONS.ServiceDisconnect;
pub const HcsNotificationFlagsReserved = HCS_NOTIFICATIONS.FlagsReserved;

pub const HCS_NOTIFICATION_CALLBACK = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        notificationType: u32,
        context: ?*anyopaque,
        notificationStatus: HRESULT,
        notificationData: ?[*:0]const u16,
    ) callconv(@import("std").os.windows.WINAPI) void,
    else => *const fn (
        notificationType: u32,
        context: ?*anyopaque,
        notificationStatus: HRESULT,
        notificationData: ?[*:0]const u16,
    ) callconv(@import("std").os.windows.WINAPI) void,
};

pub const HCS_PROCESS_INFORMATION = extern struct {
    ProcessId: u32,
    Reserved: u32,
    StdInput: ?HANDLE,
    StdOutput: ?HANDLE,
    StdError: ?HANDLE,
};

pub const HCS_CREATE_OPTIONS = enum(i32) {
    @"1" = 65536,
};
pub const HcsCreateOptions_1 = HCS_CREATE_OPTIONS.@"1";

pub const HCS_CREATE_OPTIONS_1 = extern struct {
    Version: HCS_CREATE_OPTIONS,
    UserToken: ?HANDLE,
    SecurityDescriptor: ?*SECURITY_DESCRIPTOR,
    CallbackOptions: HCS_EVENT_OPTIONS,
    CallbackContext: ?*anyopaque,
    Callback: ?HCS_EVENT_CALLBACK,
};

//--------------------------------------------------------------------------------
// Section: Functions (64)
//--------------------------------------------------------------------------------
pub extern "computecore" fn HcsEnumerateComputeSystems(
    query: ?[*:0]const u16,
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsEnumerateComputeSystemsInNamespace(
    idNamespace: ?[*:0]const u16,
    query: ?[*:0]const u16,
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCreateOperation(
    context: ?*const anyopaque,
    callback: ?HCS_OPERATION_COMPLETION,
) callconv(@import("std").os.windows.WINAPI) HCS_OPERATION;

pub extern "computecore" fn HcsCloseOperation(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "computecore" fn HcsGetOperationContext(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) ?*anyopaque;

pub extern "computecore" fn HcsSetOperationContext(
    operation: HCS_OPERATION,
    context: ?*const anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetComputeSystemFromOperation(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HCS_SYSTEM;

pub extern "computecore" fn HcsGetProcessFromOperation(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HCS_PROCESS;

pub extern "computecore" fn HcsGetOperationType(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HCS_OPERATION_TYPE;

pub extern "computecore" fn HcsGetOperationId(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) u64;

pub extern "computecore" fn HcsGetOperationResult(
    operation: HCS_OPERATION,
    resultDocument: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetOperationResultAndProcessInfo(
    operation: HCS_OPERATION,
    processInformation: ?*HCS_PROCESS_INFORMATION,
    resultDocument: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetProcessorCompatibilityFromSavedState(
    RuntimeFileName: ?[*:0]const u16,
    ProcessorFeaturesString: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsWaitForOperationResult(
    operation: HCS_OPERATION,
    timeoutMs: u32,
    resultDocument: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsWaitForOperationResultAndProcessInfo(
    operation: HCS_OPERATION,
    timeoutMs: u32,
    processInformation: ?*HCS_PROCESS_INFORMATION,
    resultDocument: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsSetOperationCallback(
    operation: HCS_OPERATION,
    context: ?*const anyopaque,
    callback: ?HCS_OPERATION_COMPLETION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCancelOperation(
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCreateComputeSystem(
    id: ?[*:0]const u16,
    configuration: ?[*:0]const u16,
    operation: HCS_OPERATION,
    securityDescriptor: ?*const SECURITY_DESCRIPTOR,
    computeSystem: ?*HCS_SYSTEM,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCreateComputeSystemInNamespace(
    idNamespace: ?[*:0]const u16,
    id: ?[*:0]const u16,
    configuration: ?[*:0]const u16,
    operation: HCS_OPERATION,
    options: ?*const HCS_CREATE_OPTIONS,
    computeSystem: ?*HCS_SYSTEM,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsOpenComputeSystem(
    id: ?[*:0]const u16,
    requestedAccess: u32,
    computeSystem: ?*HCS_SYSTEM,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsOpenComputeSystemInNamespace(
    idNamespace: ?[*:0]const u16,
    id: ?[*:0]const u16,
    requestedAccess: u32,
    computeSystem: ?*HCS_SYSTEM,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCloseComputeSystem(
    computeSystem: HCS_SYSTEM,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "computecore" fn HcsStartComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsShutDownComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsTerminateComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCrashComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsPauseComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsResumeComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsSaveComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetComputeSystemProperties(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    propertyQuery: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsModifyComputeSystem(
    computeSystem: HCS_SYSTEM,
    operation: HCS_OPERATION,
    configuration: ?[*:0]const u16,
    identity: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsWaitForComputeSystemExit(
    computeSystem: HCS_SYSTEM,
    timeoutMs: u32,
    result: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsSetComputeSystemCallback(
    computeSystem: HCS_SYSTEM,
    callbackOptions: HCS_EVENT_OPTIONS,
    context: ?*const anyopaque,
    callback: ?HCS_EVENT_CALLBACK,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCreateProcess(
    computeSystem: HCS_SYSTEM,
    processParameters: ?[*:0]const u16,
    operation: HCS_OPERATION,
    securityDescriptor: ?*const SECURITY_DESCRIPTOR,
    process: ?*HCS_PROCESS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsOpenProcess(
    computeSystem: HCS_SYSTEM,
    processId: u32,
    requestedAccess: u32,
    process: ?*HCS_PROCESS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCloseProcess(
    process: HCS_PROCESS,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "computecore" fn HcsTerminateProcess(
    process: HCS_PROCESS,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsSignalProcess(
    process: HCS_PROCESS,
    operation: HCS_OPERATION,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetProcessInfo(
    process: HCS_PROCESS,
    operation: HCS_OPERATION,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetProcessProperties(
    process: HCS_PROCESS,
    operation: HCS_OPERATION,
    propertyQuery: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsModifyProcess(
    process: HCS_PROCESS,
    operation: HCS_OPERATION,
    settings: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsSetProcessCallback(
    process: HCS_PROCESS,
    callbackOptions: HCS_EVENT_OPTIONS,
    context: ?*anyopaque,
    callback: ?HCS_EVENT_CALLBACK,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsWaitForProcessExit(
    computeSystem: HCS_PROCESS,
    timeoutMs: u32,
    result: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGetServiceProperties(
    propertyQuery: ?[*:0]const u16,
    result: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsModifyServiceSettings(
    settings: ?[*:0]const u16,
    result: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsSubmitWerReport(
    settings: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCreateEmptyGuestStateFile(
    guestStateFilePath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsCreateEmptyRuntimeStateFile(
    runtimeStateFilePath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGrantVmAccess(
    vmId: ?[*:0]const u16,
    filePath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsRevokeVmAccess(
    vmId: ?[*:0]const u16,
    filePath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsGrantVmGroupAccess(
    filePath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computecore" fn HcsRevokeVmGroupAccess(
    filePath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsImportLayer(
    layerPath: ?[*:0]const u16,
    sourceFolderPath: ?[*:0]const u16,
    layerData: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsExportLayer(
    layerPath: ?[*:0]const u16,
    exportFolderPath: ?[*:0]const u16,
    layerData: ?[*:0]const u16,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsExportLegacyWritableLayer(
    writableLayerMountPath: ?[*:0]const u16,
    writableLayerFolderPath: ?[*:0]const u16,
    exportFolderPath: ?[*:0]const u16,
    layerData: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsDestroyLayer(
    layerPath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsSetupBaseOSLayer(
    layerPath: ?[*:0]const u16,
    vhdHandle: ?HANDLE,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsInitializeWritableLayer(
    writableLayerPath: ?[*:0]const u16,
    layerData: ?[*:0]const u16,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsInitializeLegacyWritableLayer(
    writableLayerMountPath: ?[*:0]const u16,
    writableLayerFolderPath: ?[*:0]const u16,
    layerData: ?[*:0]const u16,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsAttachLayerStorageFilter(
    layerPath: ?[*:0]const u16,
    layerData: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsDetachLayerStorageFilter(
    layerPath: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsFormatWritableLayerVhd(
    vhdHandle: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsGetLayerVhdMountPath(
    vhdHandle: ?HANDLE,
    mountPath: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computestorage" fn HcsSetupBaseOSVolume(
    layerPath: ?[*:0]const u16,
    volumePath: ?[*:0]const u16,
    options: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {},
    .wide => struct {},
    .unspecified => if (@import("builtin").is_test) struct {} else struct {},
};
//--------------------------------------------------------------------------------
// Section: Imports (4)
//--------------------------------------------------------------------------------
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const PWSTR = @import("../foundation.zig").PWSTR;
const SECURITY_DESCRIPTOR = @import("../security.zig").SECURITY_DESCRIPTOR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "HCS_OPERATION_COMPLETION")) {
        _ = HCS_OPERATION_COMPLETION;
    }
    if (@hasDecl(@This(), "HCS_EVENT_CALLBACK")) {
        _ = HCS_EVENT_CALLBACK;
    }
    if (@hasDecl(@This(), "HCS_NOTIFICATION_CALLBACK")) {
        _ = HCS_NOTIFICATION_CALLBACK;
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
