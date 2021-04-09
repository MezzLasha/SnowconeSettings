.class public final synthetic Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$jamvtk1oAktHGt8ALm3kP2NdtwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

.field public final synthetic f$1:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$jamvtk1oAktHGt8ALm3kP2NdtwI;->f$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$jamvtk1oAktHGt8ALm3kP2NdtwI;->f$1:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$jamvtk1oAktHGt8ALm3kP2NdtwI;->f$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$jamvtk1oAktHGt8ALm3kP2NdtwI;->f$1:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->lambda$bindPreference$0$DeviceAdminListPreferenceController(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
