.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# instance fields
.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryStatus:I

.field mFTAMode:Z

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mPlugType:I

.field private mScreenOffTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 60
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 61
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 72
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 122
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 107
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 108
    const/4 v2, 0x1

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 114
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 115
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 116
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 114
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 119
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 304
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 202
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 331
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 333
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 349
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 350
    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 352
    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 355
    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 358
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method playLowBatterySound()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 267
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "low_battery_sound_timeout"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 271
    .local v4, silenceAfter:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long v1, v7, v9

    .line 272
    .local v1, offTime:J
    if-lez v4, :cond_1

    iget-wide v7, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    int-to-long v7, v4

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 275
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screen off too long ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms, limit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms): not waking up the user with low battery sound"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v7, "power_sounds_enabled"

    invoke-static {v0, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 285
    const-string v7, "low_battery_sound"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, soundPath:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 289
    .local v6, soundUri:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 290
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 291
    .local v3, sfx:Landroid/media/Ringtone;
    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v3, v11}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 293
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 307
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 313
    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 314
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 315
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 318
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 325
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 326
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 327
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 328
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 205
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    const-string v6, "showing"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " low battery warning: level="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v8}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v1

    .line 211
    .local v1, bucket:I
    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x2

    if-eq v6, v1, :cond_1

    .line 212
    const-string v6, "PowerUI"

    const-string v7, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    return-void

    .line 205
    .end local v1           #bucket:I
    :cond_0
    const-string v6, "updating"

    goto :goto_0

    .line 216
    .restart local v1       #bucket:I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0a000e

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, levelText:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 220
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 222
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const/high16 v7, 0x7f04

    invoke-static {v6, v7, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 223
    .local v5, v:Landroid/view/View;
    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 225
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 229
    const v6, 0x7f0a000c

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 231
    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 232
    const v6, 0x104000a

    invoke-virtual {v0, v6, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x5880

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 240
    const v6, 0x7f0a0010

    new-instance v7, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 251
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 258
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 259
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 261
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 262
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method public start()V
    .locals 6

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 78
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v2, v3

    .line 80
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v2, v3

    .line 83
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 84
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    return-void

    .line 84
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0
.end method
