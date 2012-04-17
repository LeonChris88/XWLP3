.class public Lorg/apache/commons/lang/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String;

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final IS_JAVA_1_1:Z

.field public static final IS_JAVA_1_2:Z

.field public static final IS_JAVA_1_3:Z

.field public static final IS_JAVA_1_4:Z

.field public static final IS_JAVA_1_5:Z

.field public static final IS_JAVA_1_6:Z

.field public static final IS_JAVA_1_7:Z

.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_OS2:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field public static final IS_OS_UNIX:Z

.field public static final IS_OS_WINDOWS:Z

.field public static final IS_OS_WINDOWS_2000:Z

.field public static final IS_OS_WINDOWS_7:Z

.field public static final IS_OS_WINDOWS_95:Z

.field public static final IS_OS_WINDOWS_98:Z

.field public static final IS_OS_WINDOWS_ME:Z

.field public static final IS_OS_WINDOWS_NT:Z

.field public static final IS_OS_WINDOWS_VISTA:Z

.field public static final IS_OS_WINDOWS_XP:Z

.field public static final JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final JAVA_COMPILER:Ljava/lang/String;

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final JAVA_HOME:Ljava/lang/String;

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String;

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VERSION_FLOAT:F

.field public static final JAVA_VERSION_INT:I

.field public static final JAVA_VERSION_TRIMMED:Ljava/lang/String;

.field public static final JAVA_VM_INFO:Ljava/lang/String;

.field public static final JAVA_VM_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_VERSION:Ljava/lang/String;

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USER_COUNTRY:Ljava/lang/String;

.field public static final USER_DIR:Ljava/lang/String;

.field public static final USER_HOME:Ljava/lang/String;

.field public static final USER_LANGUAGE:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String;

.field public static final USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_ARCH:Ljava/lang/String;

    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "user.region"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_DIR:Ljava/lang/String;

    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_HOME:Ljava/lang/String;

    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_NAME:Ljava/lang/String;

    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionTrimmed()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsFloat()F

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_FLOAT:F

    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsInt()I

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_INT:I

    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_1:Z

    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_2:Z

    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_3:Z

    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_4:Z

    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_5:Z

    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_6:Z

    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_7:Z

    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    const-string v0, "HP-UX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    const-string v0, "Irix"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LINUX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC:Z

    const-string v0, "Mac OS X"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    const-string v0, "OS/2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_OS2:Z

    const-string v0, "Solaris"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    const-string v0, "SunOS"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_UNIX:Z

    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS:Z

    const-string v0, "Windows"

    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_2000:Z

    const-string v0, "Windows 9"

    const-string v1, "4.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_95:Z

    const-string v0, "Windows 9"

    const-string v1, "4.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_98:Z

    const-string v0, "Windows"

    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_ME:Z

    const-string v0, "Windows NT"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_NT:Z

    const-string v0, "Windows"

    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_XP:Z

    const-string v0, "Windows"

    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    const-string v0, "Windows"

    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_7:Z

    return-void

    :cond_3
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getJavaVersionAsFloat()F
    .locals 7

    const/4 v6, 0x5

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getJavaVersionAsInt()I
    .locals 8

    const/4 v7, 0x5

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getJavaVersionTrimmed()Ljava/lang/String;
    .locals 3

    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOSMatches(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method
