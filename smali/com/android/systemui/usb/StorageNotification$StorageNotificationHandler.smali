.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;
.super Landroid/os/Handler;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 678
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 679
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const v8, 0x108007b

    const v3, 0x108007a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 682
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 724
    :goto_0
    return-void

    .line 684
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 685
    const-string v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage -> MSG_UPDATE_STATE path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #calls: Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z
    invoke-static {v0, v7}, Lcom/android/systemui/usb/StorageNotification;->access$400(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v1, 0x10404a5

    const v2, 0x10404a7

    move v5, v4

    #calls: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v1, 0x10404a4

    const v2, 0x10404a6

    move v5, v4

    #calls: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 700
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage -> USBHOST_UPDATE_STATE path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 705
    const-string v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage -> MSG_UPDATE_STATE_UNMOUNTABLE path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 707
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 708
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 710
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #calls: Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z
    invoke-static {v0, v7}, Lcom/android/systemui/usb/StorageNotification;->access$400(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v1, 0x104049d

    const v2, 0x104049f

    move v3, v8

    #calls: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v1, 0x104049c

    const v2, 0x104049e

    move v3, v8

    #calls: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
