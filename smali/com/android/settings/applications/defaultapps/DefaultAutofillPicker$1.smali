.class Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPackageAdded$0()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method private synthetic lambda$onPackageModified$1()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method private synthetic lambda$onPackageRemoved$2()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPackageAdded$0$DefaultAutofillPicker$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->lambda$onPackageAdded$0()V

    return-void
.end method

.method public synthetic lambda$onPackageModified$1$DefaultAutofillPicker$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->lambda$onPackageModified$1()V

    return-void
.end method

.method public synthetic lambda$onPackageRemoved$2$DefaultAutofillPicker$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->lambda$onPackageRemoved$2()V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 131
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$Ti0ICXI2NUu4NN4noxu-MTOf6fk;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$Ti0ICXI2NUu4NN4noxu-MTOf6fk;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 136
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$lm0fLe9ZmlIcmV_PgpMbzUTXF9A;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$lm0fLe9ZmlIcmV_PgpMbzUTXF9A;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 141
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$JV6EfFdrASi_e-RbM0XSk99FJgA;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$JV6EfFdrASi_e-RbM0XSk99FJgA;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
