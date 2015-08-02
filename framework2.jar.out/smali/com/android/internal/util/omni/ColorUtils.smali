.class public Lcom/android/internal/util/omni/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blendColors(IIF)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, p2

    .local v2, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .local v0, "b":F
    float-to-int v4, v3

    float-to-int v5, v1

    float-to-int v6, v0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method public static blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "out":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .local v3, "rs":Landroid/renderscript/RenderScript;
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    invoke-static {v3, p1, v5, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .local v2, "output":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .local v4, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float v5, p2

    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v1
.end method

.method public static changeColorTransparency(II)I
    .locals 6
    .param p0, "colorToChange"    # I
    .param p1, "reduce"    # I

    .prologue
    const/4 v5, -0x3

    if-ne p0, v5, :cond_0

    .end local p0    # "colorToChange":I
    :goto_0
    return p0

    .restart local p0    # "colorToChange":I
    :cond_0
    const/4 v3, 0x2

    .local v3, "nots":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .local v4, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, "blue":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, "green":I
    mul-int v0, v3, p1

    .local v0, "alpha":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    goto :goto_0
.end method

.method public static darken(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "fraction"    # F

    .prologue
    const/high16 v0, -0x1000000

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/omni/ColorUtils;->blendColors(IIF)I

    move-result v0

    return v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v2, "height":I
    .local v3, "width":I
    :cond_0
    :goto_0
    return-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_1
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .restart local v2    # "height":I
    if-lez v3, :cond_0

    if-lez v2, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getAverageColor(Landroid/graphics/drawable/Drawable;)I
    .locals 18
    .param p0, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v3, 0x14

    .local v3, "hSamples":I
    const/16 v13, 0x14

    .local v13, "vSamples":I
    mul-int v11, v3, v13

    .local v11, "sampleSize":I
    const/4 v15, 0x3

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    .local v12, "sampleTotals":[F
    const v9, 0x3dcccccd    # 0.1f

    .local v9, "minimumSaturation":F
    const/16 v8, 0xc8

    .local v8, "minimumAlpha":I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/omni/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    const/4 v15, -0x3

    :goto_0
    return v15

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .local v14, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "height":I
    const/4 v15, 0x3

    new-array v5, v15, [F

    .local v5, "hsv":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v14, :cond_3

    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v4, :cond_2

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .local v10, "sample":I
    invoke-static {v10, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    if-le v15, v8, :cond_1

    const/4 v15, 0x1

    aget v15, v5, v15

    cmpl-float v15, v15, v9

    if-ltz v15, :cond_1

    const/4 v15, 0x0

    aget v16, v12, v15

    const/16 v17, 0x0

    aget v17, v5, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    const/4 v15, 0x1

    aget v16, v12, v15

    const/16 v17, 0x1

    aget v17, v5, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    const/4 v15, 0x2

    aget v16, v12, v15

    const/16 v17, 0x2

    aget v17, v5, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    :cond_1
    div-int v15, v4, v13

    add-int/2addr v7, v15

    goto :goto_2

    .end local v10    # "sample":I
    :cond_2
    div-int v15, v14, v3

    add-int/2addr v6, v15

    goto :goto_1

    .end local v7    # "j":I
    :cond_3
    const/4 v15, 0x3

    new-array v1, v15, [F

    .local v1, "average":[F
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v12, v16

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v1, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v12, v16

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v1, v15

    const/4 v15, 0x2

    const v16, 0x3f4ccccd    # 0.8f

    aput v16, v1, v15

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/util/omni/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;Z)I
    .locals 19
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "applyThreshold"    # Z

    .prologue
    if-nez p0, :cond_0

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x24

    new-array v12, v1, [I

    .local v12, "colorBins":[I
    const/4 v14, -0x1

    .local v14, "maxBin":I
    const/16 v1, 0x24

    new-array v0, v1, [F

    move-object/from16 v16, v0

    .local v16, "sumHue":[F
    const/16 v1, 0x24

    new-array v0, v1, [F

    move-object/from16 v17, v0

    .local v17, "sumSat":[F
    const/16 v1, 0x24

    new-array v0, v1, [F

    move-object/from16 v18, v0

    .local v18, "sumVal":[F
    const/4 v1, 0x3

    new-array v13, v1, [F

    .local v13, "hsv":[F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, "width":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v15, 0x0

    .local v15, "row":I
    :goto_1
    if-ge v15, v8, :cond_6

    const/4 v11, 0x0

    .local v11, "col":I
    :goto_2
    if-ge v11, v4, :cond_5

    mul-int v1, v15, v4

    add-int/2addr v1, v11

    aget v10, v2, v1

    .local v10, "c":I
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v10, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    aget v1, v13, v1

    const v3, 0x3eb33333    # 0.35f

    cmpg-float v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget v1, v13, v1

    const v3, 0x3eb33333    # 0.35f

    cmpg-float v1, v1, v3

    if-lez v1, :cond_1

    :cond_3
    const/4 v1, 0x0

    aget v1, v13, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v9, v5

    .local v9, "bin":I
    aget v1, v16, v9

    const/4 v3, 0x0

    aget v3, v13, v3

    add-float/2addr v1, v3

    aput v1, v16, v9

    aget v1, v17, v9

    const/4 v3, 0x1

    aget v3, v13, v3

    add-float/2addr v1, v3

    aput v1, v17, v9

    aget v1, v18, v9

    const/4 v3, 0x2

    aget v3, v13, v3

    add-float/2addr v1, v3

    aput v1, v18, v9

    aget v1, v12, v9

    add-int/lit8 v1, v1, 0x1

    aput v1, v12, v9

    if-ltz v14, :cond_4

    aget v1, v12, v9

    aget v3, v12, v14

    if-le v1, v3, :cond_1

    :cond_4
    move v14, v9

    goto :goto_3

    .end local v9    # "bin":I
    .end local v10    # "c":I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v11    # "col":I
    :cond_6
    if-gez v14, :cond_7

    const/4 v1, -0x3

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    aget v3, v16, v14

    aget v5, v12, v14

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, v13, v1

    const/4 v1, 0x1

    aget v3, v17, v14

    aget v5, v12, v14

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, v13, v1

    const/4 v1, 0x2

    aget v3, v18, v14

    aget v5, v12, v14

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, v13, v1

    invoke-static {v13}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    goto/16 :goto_0
.end method

.method public static getDominantColor(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, -0x3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/omni/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/omni/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v1

    goto :goto_0
.end method

.method public static getDominantExampleColor(Landroid/graphics/Bitmap;)I
    .locals 28
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    if-nez p0, :cond_0

    const/4 v14, -0x3

    :goto_0
    return v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .local v8, "height":I
    mul-int v26, v4, v8

    .local v26, "size":I
    move/from16 v0, v26

    new-array v2, v0, [I

    .local v2, "pixels":[I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "colorMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .local v12, "color":I
    const/16 v22, 0x0

    .local v22, "r":I
    const/16 v16, 0x0

    .local v16, "g":I
    const/4 v9, 0x0

    .local v9, "b":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    array-length v3, v2

    move/from16 v0, v19

    if-ge v0, v3, :cond_4

    aget v12, v2, v19

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v22

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v16

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .local v23, "rC":Ljava/lang/Integer;
    if-nez v23, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .end local v23    # "rC":Ljava/lang/Integer;
    .local v24, "rC":Ljava/lang/Integer;
    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .local v17, "gC":Ljava/lang/Integer;
    if-nez v17, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :cond_2
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .end local v17    # "gC":Ljava/lang/Integer;
    .local v18, "gC":Ljava/lang/Integer;
    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .local v10, "bC":Ljava/lang/Integer;
    if-nez v10, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_3
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .end local v10    # "bC":Ljava/lang/Integer;
    .local v11, "bC":Ljava/lang/Integer;
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .end local v11    # "bC":Ljava/lang/Integer;
    .end local v18    # "gC":Ljava/lang/Integer;
    .end local v24    # "rC":Ljava/lang/Integer;
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .local v25, "rgb":[I
    const/16 v19, 0x0

    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    const/16 v21, 0x0

    .local v21, "max":I
    const/16 v27, 0x0

    .local v27, "val":I
    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v27

    goto :goto_3

    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    aput v27, v25, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "max":I
    .end local v27    # "val":I
    :cond_7
    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-static {v3, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    .local v14, "dominantColor":I
    goto/16 :goto_0
.end method

.method public static getGradientDrawable(ZI)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "isNav"    # Z
    .param p1, "color"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x1000000

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v8, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .local v0, "color2":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_0

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput p1, v5, v8

    aput v0, v5, v7

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .local v1, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {p1}, Lcom/android/internal/util/omni/ColorUtils;->isBrightColor(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    move p1, v3

    :goto_1
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    invoke-virtual {v1, v7, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .restart local v1    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    move p1, v4

    :goto_2
    goto :goto_1

    :cond_3
    move p1, v3

    goto :goto_2
.end method

.method public static getIconColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, -0x3

    if-nez p0, :cond_1

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "copyDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "copyDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "copyDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    goto :goto_0

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/omni/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/omni/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v2

    goto :goto_0
.end method

.method public static getIconWhiteBlackTransparent(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/internal/util/omni/ColorUtils;->getDominantColor(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .local v0, "color":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/high16 v2, -0x1000000

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMainColorFromBitmap(Landroid/graphics/Bitmap;II)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v5, -0x3

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .local v3, "pixel":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .local v4, "red":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, "blue":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, "green":I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .local v0, "alpha":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_0
.end method

.method public static getMainColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, 0x5

    const/4 v7, -0x3

    if-nez p0, :cond_1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "copyDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v7

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "copyDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "copyDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    instance-of v8, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_2

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    goto :goto_0

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {v3}, Lcom/android/internal/util/omni/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v9, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .local v5, "pixel":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .local v6, "red":I
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .local v2, "blue":I
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .local v4, "green":I
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .local v0, "alpha":I
    invoke-static {v0, v6, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0
.end method

.method public static isBrightColor(I)Z
    .locals 11
    .param p0, "color"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x3

    if-ne p0, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p0, :cond_0

    const/4 v4, -0x1

    if-ne p0, v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    new-array v1, v4, [I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v1, v10

    .local v1, "rgb":[I
    aget v4, v1, v2

    aget v5, v1, v2

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v4, v6

    aget v6, v1, v3

    aget v7, v1, v3

    mul-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aget v6, v1, v10

    aget v7, v1, v10

    mul-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, "brightness":I
    const/16 v4, 0xaa

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isColorTransparency(I)Z
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x3

    if-ne p0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x2

    .local v1, "nots":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    div-int v0, v3, v1

    .local v0, "alpha":I
    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static lighten(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "fraction"    # F

    .prologue
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/omni/ColorUtils;->blendColors(IIF)I

    move-result v0

    return v0
.end method

.method public static opposeColor(I)I
    .locals 8
    .param p0, "ColorToInvert"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, -0x3

    if-ne p0, v3, :cond_0

    .end local p0    # "ColorToInvert":I
    :goto_0
    return p0

    .restart local p0    # "ColorToInvert":I
    :cond_0
    const/16 v1, 0xff

    .local v1, "RGBMAX":I
    const/4 v3, 0x3

    new-array v2, v3, [F

    .local v2, "hsv":[F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int v4, v1, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-float v0, v3

    .local v0, "H":F
    cmpl-float v3, v0, v7

    if-lez v3, :cond_1

    sub-float/2addr v0, v7

    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    goto :goto_0
.end method
