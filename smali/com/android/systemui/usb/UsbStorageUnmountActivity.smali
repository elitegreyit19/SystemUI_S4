.class public Lcom/android/systemui/usb/UsbStorageUnmountActivity;
.super Landroid/app/Activity;
.source "UsbStorageUnmountActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbStorageUnmountActivity"

.field private static final localLOGD:Z = true


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private unmountUsbStorages()V
    .locals 8

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 95
    .local v3, mountService:Landroid/os/storage/IMountService;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v5

    .line 96
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 97
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, status:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v4           #status:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "UsbStorageUnmountActivity"

    const-string v6, "Failed to unmount"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    return-void
.end method


# virtual methods
.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 80
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 82
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 87
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 84
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "UsbStorageUnmountActivity"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->unmountUsbStorages()V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageUnmountActivity;->finish()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onDestroy !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    const-string v0, "UsbStorageUnmountActivity"

    const-string v1, "onResume !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
