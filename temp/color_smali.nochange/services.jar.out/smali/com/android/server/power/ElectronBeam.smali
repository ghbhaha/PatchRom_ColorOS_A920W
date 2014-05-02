.class final Lcom/android/server/power/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private mDisplayLayerStack:I

.field private mDisplayRotation:I

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mMode:I

.field private mPrepared:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 2
    .parameter "display"

    .prologue
    const/16 v1, 0x8

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    .line 96
    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 97
    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 115
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam;->mDisplay:Landroid/view/Display;

    .line 116
    return-void
.end method

.method private attachEglContext()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 682
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    .line 689
    :goto_0
    return v0

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 686
    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v9, 0x0

    .line 377
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/high16 v5, 0x4000

    invoke-static {v0, v1, v9, v5}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 379
    .local v11, bitmap:Landroid/graphics/Bitmap;
    if-nez v11, :cond_0

    .line 380
    const-string v0, "ElectronBeam"

    const-string v1, "Could not take a screenshot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 452
    :goto_0
    return v0

    .line 384
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 450
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v9

    goto :goto_0

    .line 388
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-nez v0, :cond_3

    .line 389
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 390
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v9

    goto :goto_0

    .line 393
    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 396
    :cond_3
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 397
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 447
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 450
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v9

    goto :goto_0

    .line 401
    :cond_4
    const/high16 v12, 0x3f80

    .line 402
    .local v12, u:F
    const/high16 v13, 0x3f80

    .line 403
    .local v13, v:F
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_5
    invoke-static {v0, v1, v11, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 404
    const-string v0, "glTexImage2D, first try"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 406
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->nextPowerOfTwo(I)I

    move-result v3

    .line 407
    .local v3, tw:I
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->nextPowerOfTwo(I)I

    move-result v4

    .line 408
    .local v4, th:I
    invoke-static {v11}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 409
    .local v2, format:I
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 412
    const-string v0, "glTexImage2D, second try"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 450
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v9

    goto/16 :goto_0

    .line 416
    :cond_5
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_7
    invoke-static {v0, v1, v5, v6, v11}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 417
    const-string v0, "glTexSubImage2D"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 450
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v9

    goto/16 :goto_0

    .line 421
    :cond_6
    :try_start_9
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v12, v0, v1

    .line 422
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v13, v0, v1

    .line 428
    .end local v2           #format:I
    .end local v3           #tw:I
    .end local v4           #th:I
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 429
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 430
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 431
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 432
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 433
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 434
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 435
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 438
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v0, v1, v5, v6}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 439
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 440
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 441
    const/4 v5, 0x0

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v8, v0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 442
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 443
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 444
    const/16 v0, 0x1702

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 445
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 447
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 450
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v14

    .line 452
    goto/16 :goto_0

    .line 447
    .end local v12           #u:F
    .end local v13           #v:F
    :catchall_0
    move-exception v0

    :try_start_b
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 450
    :catchall_1
    move-exception v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .parameter "func"

    .prologue
    .line 742
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "func"
    .parameter "log"

    .prologue
    .line 746
    const/4 v1, 0x0

    .line 748
    .local v1, hadError:Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_1

    .line 749
    if-eqz p1, :cond_0

    .line 750
    const-string v2, "ElectronBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 754
    :cond_1
    return v1
.end method

.method private createEglContext()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 471
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 472
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 473
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 514
    :goto_0
    return v2

    .line 477
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 478
    .local v9, version:[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 480
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    .end local v9           #version:[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 486
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 493
    .local v1, eglConfigAttribList:[I
    new-array v6, v10, [I

    .line 494
    .local v6, numEglConfigs:[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 495
    .local v3, eglConfigs:[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 503
    .end local v1           #eglConfigAttribList:[I
    .end local v3           #eglConfigs:[Landroid/opengl/EGLConfig;
    .end local v6           #numEglConfigs:[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 504
    new-array v8, v10, [I

    const/16 v0, 0x3038

    aput v0, v8, v2

    .line 507
    .local v8, eglContextAttribList:[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    .line 509
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 510
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .end local v8           #eglContextAttribList:[I
    :cond_4
    move v2, v10

    .line 514
    goto :goto_0

    .line 486
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 628
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_0

    .line 629
    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 632
    .local v0, eglSurfaceAttribList:[I
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 634
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_0

    .line 635
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 639
    .end local v0           #eglSurfaceAttribList:[I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 732
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 733
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 734
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 532
    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 537
    :try_start_1
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 538
    const v6, 0x20004

    .line 542
    .local v6, flags:I
    :goto_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ElectronBeam"

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    .end local v6           #flags:I
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayerStack(I)V

    .line 552
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 554
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 573
    :goto_1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 575
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 540
    :cond_2
    const/16 v6, 0x404

    .restart local v6       #flags:I
    goto :goto_0

    .line 545
    .end local v6           #flags:I
    :catch_0
    move-exception v7

    .line 546
    .local v7, ex:Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v0, "ElectronBeam"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    move v0, v8

    goto :goto_2

    .line 556
    .end local v7           #ex:Landroid/view/Surface$OutOfResourcesException;
    :pswitch_0
    :try_start_4
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 557
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 573
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0

    .line 560
    :pswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 561
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_1

    .line 564
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 565
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_1

    .line 568
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 569
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private destroyEglSurface()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 647
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 649
    :cond_1
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 457
    iput-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 458
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 461
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 467
    :cond_0
    return-void

    .line 463
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private destroySurface()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 663
    :cond_0
    return-void

    .line 657
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .locals 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 697
    :cond_0
    return-void
.end method

.method private drawHStretch(F)V
    .locals 7
    .parameter "stretch"

    .prologue
    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 325
    const/high16 v1, 0x4100

    invoke-static {p1, v1}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 330
    .local v0, ag:F
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 332
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v5, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 333
    invoke-static {v6}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 336
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/power/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 337
    sub-float v1, v4, v0

    sub-float v2, v4, v0

    sub-float v3, v4, v0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 338
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 341
    invoke-static {v6}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 343
    :cond_0
    return-void
.end method

.method private drawVStretch(F)V
    .locals 11
    .parameter "stretch"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/16 v8, 0xde1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 253
    const/high16 v3, 0x40f0

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v2

    .line 254
    .local v2, ar:F
    const/high16 v3, 0x4100

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v1

    .line 255
    .local v1, ag:F
    const/high16 v3, 0x4108

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 262
    .local v0, ab:F
    invoke-static {v7, v7}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 263
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 266
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 267
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 270
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v3, v3, v6

    invoke-static {v8, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 271
    const/16 v4, 0x2300

    const/16 v5, 0x2200

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v3, :cond_1

    const/16 v3, 0x2100

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 273
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 275
    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 277
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 279
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 281
    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 282
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 283
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 286
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 287
    invoke-static {v7, v6, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 288
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 291
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v1}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 292
    invoke-static {v6, v7, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 293
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 296
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 297
    invoke-static {v6, v6, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 298
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 301
    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 302
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 303
    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 306
    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-ne v3, v7, :cond_0

    .line 307
    const/high16 v3, 0x3f80

    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 308
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 312
    :cond_0
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 313
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 314
    return-void

    .line 271
    :cond_1
    const/16 v3, 0x1e01

    goto/16 :goto_0
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .parameter "func"

    .prologue
    .line 738
    const-string v0, "ElectronBeam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    return-void
.end method

.method private static nextPowerOfTwo(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 728
    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    shl-int/2addr v0, v1

    return v0
.end method

.method private static scurve(FF)F
    .locals 5
    .parameter "value"
    .parameter "s"

    .prologue
    const/high16 v4, 0x3f00

    .line 708
    sub-float v1, p0, v4

    .line 713
    .local v1, x:F
    invoke-static {v1, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v2, v3, v4

    .line 717
    .local v2, y:F
    invoke-static {v4, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v0, v3, v4

    .line 720
    .local v0, v:F
    div-float v3, v2, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 7
    .parameter "vtx"
    .parameter "dw"
    .parameter "dh"
    .parameter "a"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, 0x3f00

    .line 354
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 355
    .local v1, w:F
    const/high16 v0, 0x3f80

    .line 356
    .local v0, h:F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 357
    .local v2, x:F
    sub-float v4, p2, v6

    mul-float v3, v4, v5

    .line 358
    .local v3, y:F
    invoke-static {p0, v2, v3, v1, v6}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 359
    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 2
    .parameter "vtx"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 366
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 367
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 368
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 369
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 370
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 371
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 372
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 373
    return-void
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 6
    .parameter "vtx"
    .parameter "dw"
    .parameter "dh"
    .parameter "a"

    .prologue
    const/high16 v5, 0x3f00

    .line 346
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 347
    .local v1, w:F
    mul-float v4, p2, p3

    sub-float v0, p2, v4

    .line 348
    .local v0, h:F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 349
    .local v2, x:F
    sub-float v4, p2, v0

    mul-float v3, v4, v5

    .line 350
    .local v3, y:F
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 351
    return-void
.end method

.method private showSurface(F)Z
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 666
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const v1, 0x40000001

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 670
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->setAlpha(F)V

    .line 671
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 675
    iput-boolean v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 676
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 678
    :cond_1
    return v2

    .line 673
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method private static sigmoid(FF)F
    .locals 2
    .parameter "x"
    .parameter "s"

    .prologue
    const/high16 v1, 0x3f80

    .line 724
    neg-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->exp(F)F

    move-result v0

    add-float/2addr v0, v1

    div-float v0, v1, v0

    return v0
.end method

.method private tryPrepare()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 178
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyScreenshotTexture()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyEglSurface()V

    .line 195
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroySurface()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 197
    return-void
.end method

.method public draw(F)Z
    .locals 7
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f00

    const/high16 v5, 0x3f80

    .line 211
    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 216
    sub-float v0, v5, p1

    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 225
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    .line 228
    cmpg-float v1, p1, v6

    if-gez v1, :cond_3

    .line 229
    div-float v1, p1, v6

    sub-float v1, v5, v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawHStretch(F)V

    .line 233
    :goto_1
    const-string v1, "drawFrame"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_0

    .line 231
    :cond_3
    sub-float v1, p1, v6

    div-float/2addr v1, v6

    sub-float v1, v5, v1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawVStretch(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 239
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0

    .line 237
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 241
    invoke-direct {p0, v5}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 758
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 759
    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public prepare(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 130
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    .line 133
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 134
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    .line 135
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    .line 136
    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    if-ne v2, v4, :cond_2

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 139
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->tryPrepare()Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    .line 148
    const/4 v1, 0x0

    .line 166
    :cond_1
    return v1

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 142
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    goto :goto_0

    .line 152
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 161
    if-ne p1, v1, :cond_1

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 163
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2}, Lcom/android/server/power/ElectronBeam;->draw(F)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateToCurrentRotation()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 580
    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 581
    :cond_0
    const-string v0, "ElectronBeam"

    const-string v2, "Can not update rotation!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 623
    :goto_0
    return v0

    .line 585
    :cond_1
    const-string v1, "ElectronBeam"

    const-string v2, "updateToCurrentRotation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 588
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    .line 589
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 592
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    .line 598
    :goto_1
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setSize(II)V

    .line 602
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 621
    :goto_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 595
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    goto :goto_1

    .line 604
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 605
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 621
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0

    .line 608
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 609
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_2

    .line 612
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 613
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_2

    .line 616
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 617
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
