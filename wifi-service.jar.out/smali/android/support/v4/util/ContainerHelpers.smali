.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .local v2, "mid":I
    aget v3, p0, v2

    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p2, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method static binarySearch([JIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .prologue
    const/4 v1, 0x0

    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .local v2, "mid":I
    aget-wide v4, p0, v2

    .local v4, "midVal":J
    cmp-long v3, v4, p2

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long v3, v4, p2

    if-lez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .end local p0    # "need":I
    :cond_0
    return p0

    .restart local p0    # "need":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
