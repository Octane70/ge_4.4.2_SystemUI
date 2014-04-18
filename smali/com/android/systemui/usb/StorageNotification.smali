.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$1;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    }
.end annotation


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mNotificationEventHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method private hideNotification(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 656
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 659
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 660
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationManager is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    return-void

    .line 664
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 665
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 666
    const/4 v3, 0x0

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 667
    iget v3, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 670
    :try_start_0
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 643
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 644
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const/4 v2, 0x1

    .line 650
    :goto_1
    return v2

    .line 643
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isStorageRemovable(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v3

    .line 619
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 620
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    const/4 v2, 0x1

    .line 627
    :cond_0
    return v2

    .line 619
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isUsbHostDevice(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 632
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const/4 v2, 0x1

    .line 638
    :goto_1
    return v2

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    const-string v0, "StorageNotification"

    const-string v1, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isUsbHostDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 167
    const v1, 0x1040474

    const v2, 0x1040475

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 182
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStorageStateChangedAsync :: failed to send message for 2GB SD card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_3
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 189
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    const v1, 0x1040496

    const v2, 0x1040497

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 201
    :goto_1
    const v0, 0x10800ab

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    goto/16 :goto_0

    .line 195
    :cond_5
    const v1, 0x1040495

    const v2, 0x1040497

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_6
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 208
    const-string v0, "checking"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 209
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 210
    const v1, 0x1040496

    const v2, 0x1040497

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 224
    :cond_7
    :goto_2
    const v0, 0x10800ab

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    .line 225
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 216
    :cond_8
    const v1, 0x1040495

    const v2, 0x1040497

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_9
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 233
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 234
    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 246
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isStorageRemovable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "removed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 250
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStorageStateChangedAsync :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_b
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 255
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_3

    .line 264
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_e
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 272
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 273
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 281
    const v1, 0x1040499

    const v2, 0x104049b

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 291
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 286
    :cond_10
    const v1, 0x1040498

    const v2, 0x104049a

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_4

    .line 292
    :cond_11
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 297
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 298
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 302
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStorageStateChangedAsync :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 306
    :cond_14
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 311
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 312
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 316
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 320
    const v1, 0x10404a9

    const v2, 0x10404ab

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 332
    :goto_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 326
    :cond_17
    const v1, 0x10404a8

    const v2, 0x10404aa

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_5

    .line 333
    :cond_18
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 338
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 342
    const v1, 0x10404a1

    const v2, 0x10404a3

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 356
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 348
    :cond_19
    const v1, 0x10404a0

    const v2, 0x10404a2

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_6

    .line 358
    :cond_1a
    const-string v0, "StorageNotification"

    const-string v1, "Ignoring unknown state {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 542
    const-string v0, "StorageNotification"

    const-string v1, "onUsbHostStateChangedAsync :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    const v1, 0x1040495

    const v2, 0x1040497

    const v3, 0x10805b1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_2
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    const v1, 0x10404a8

    const v2, 0x10404aa

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 570
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_4
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    const v1, 0x10404a0

    const v2, 0x10404a2

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    :cond_5
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 584
    const-string v0, "removed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 585
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 586
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 587
    const-string v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbHostStateChangedAsync :: failed to send message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v8           #msg:Landroid/os/Message;
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :cond_7
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 594
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 595
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    :cond_8
    const v1, 0x1040498

    const v2, 0x104049a

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :cond_9
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 606
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    :cond_a
    const v1, 0x104049c

    const v2, 0x104049e

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v0, "usbstorages"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, st:Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v0, :cond_2

    .line 135
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    const-string v1, "StorageNotification"

    const-string v2, "No card or card being checked = don\'t display"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 p1, 0x0

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 148
    return-void

    .line 144
    :cond_2
    const-string v1, "StorageNotification"

    const-string v2, "ExternalStorageState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "path"

    .prologue
    .line 470
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 539
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 477
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 481
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v8, :cond_2

    if-eqz p4, :cond_2

    .line 488
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 489
    .local v4, notificationId:I
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    .end local v4           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 493
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 494
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 495
    .local v7, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 497
    .local v3, message:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_3

    .line 498
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 499
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 502
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 504
    if-eqz p5, :cond_6

    .line 505
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v9, 0x10

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 510
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 511
    if-nez p6, :cond_4

    .line 512
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 513
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v8, v9, v2, v10, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 517
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 518
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 522
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 523
    .restart local v4       #notificationId:I
    if-eqz p4, :cond_7

    .line 525
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, deleteIntent:Landroid/content/Intent;
    const-string v8, "nid"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 529
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 470
    .end local v1           #deleteIntent:Landroid/content/Intent;
    .end local v4           #notificationId:I
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 507
    .restart local v3       #message:Ljava/lang/CharSequence;
    .restart local v5       #notificationManager:Landroid/app/NotificationManager;
    .restart local v6       #r:Landroid/content/res/Resources;
    .restart local v7       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 535
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    .restart local v4       #notificationId:I
    :cond_7
    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v4, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 12
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 389
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 393
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 396
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 400
    if-eqz p5, :cond_4

    .line 401
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 402
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 403
    .local v7, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 405
    .local v3, message:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    .line 406
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 407
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 408
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 411
    :cond_2
    if-eqz p4, :cond_5

    .line 412
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 417
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 419
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 420
    if-nez p6, :cond_3

    .line 421
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v8, v9, v2, v10, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 426
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 427
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adb_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v1, 0x1

    .line 432
    .local v1, adbOn:Z
    :goto_2
    if-nez v1, :cond_4

    .line 442
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 446
    .end local v1           #adbOn:Z
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 447
    .local v4, notificationId:I
    if-eqz p5, :cond_7

    .line 448
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 389
    .end local v4           #notificationId:I
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 414
    .restart local v3       #message:Ljava/lang/CharSequence;
    .restart local v5       #notificationManager:Landroid/app/NotificationManager;
    .restart local v6       #r:Landroid/content/res/Resources;
    .restart local v7       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 427
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 451
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    .restart local v4       #notificationId:I
    :cond_7
    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v4, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 9

    .prologue
    .line 104
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 105
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 106
    .local v0, connected:Z
    const-string v4, "StorageNotification"

    const-string v5, "Startup with UMS connection %s (media state %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 111
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, thr:Landroid/os/HandlerThread;
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification2"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, thr2:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 114
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 116
    new-instance v4, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;-><init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    .line 118
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    .line 119
    .local v1, listener:Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    invoke-virtual {v1, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 120
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 121
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 367
    if-eqz p1, :cond_0

    .line 368
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 370
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 373
    const v1, 0x1040472

    const v2, 0x1040473

    const v3, 0x10805b1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v9, 0x0

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
