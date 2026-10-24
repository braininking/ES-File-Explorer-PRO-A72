.class public Lcom/estrongs/android/nativetool/NativeAuth;
.super Ljava/lang/Object;

.field public static a:Z

.method static constructor <clinit>()V
    .locals 0
    invoke-static {}, Lcom/estrongs/android/nativetool/NativeAuth;->a()V
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a()V
    .locals 2
    :try_start_0
    new-instance v0, Ljava/lang/String;
    const-string/jumbo v1, "/data/data/com.estrongs.android.pop.pro/files/skip_auth"
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    move-result v0
    sput-boolean v0, Lcom/estrongs/android/nativetool/NativeAuth;->a:Z
    :goto_0
    return-void
    :cond_0
    const/4 v0, 0x1
    sput-boolean v0, Lcom/estrongs/android/nativetool/NativeAuth;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    goto :goto_0
.end method

.method public static putAuth(I)V
    .locals 0
    return-void
.end method
