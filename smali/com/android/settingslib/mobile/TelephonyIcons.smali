.class public Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FLIGHT_MODE_ICON:I

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ICON_1X:I

.field public static final ICON_3G:I

.field public static final ICON_4G:I

.field public static final ICON_4G_PLUS:I

.field public static final ICON_5G:I

.field public static final ICON_5G_E:I

.field public static final ICON_5G_PLUS:I

.field public static final ICON_CWF:I

.field public static final ICON_E:I

.field public static final ICON_G:I

.field public static final ICON_H:I

.field public static final ICON_H_PLUS:I

.field public static final ICON_LTE:I

.field public static final ICON_LTE_PLUS:I

.field public static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/SignalIcon$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 190

    .line 31
    sget v0, Lcom/android/settingslib/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/settingslib/mobile/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 33
    sget v12, Lcom/android/settingslib/R$drawable;->ic_lte_mobiledata:I

    sput v12, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE:I

    .line 34
    sget v24, Lcom/android/settingslib/R$drawable;->ic_lte_plus_mobiledata:I

    sput v24, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 35
    sget v36, Lcom/android/settingslib/R$drawable;->ic_g_mobiledata:I

    sput v36, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_G:I

    .line 36
    sget v48, Lcom/android/settingslib/R$drawable;->ic_e_mobiledata:I

    sput v48, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_E:I

    .line 37
    sget v60, Lcom/android/settingslib/R$drawable;->ic_h_mobiledata:I

    sput v60, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H:I

    .line 38
    sget v72, Lcom/android/settingslib/R$drawable;->ic_h_plus_mobiledata:I

    sput v72, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_H_PLUS:I

    .line 39
    sget v84, Lcom/android/settingslib/R$drawable;->ic_3g_mobiledata:I

    sput v84, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_3G:I

    .line 40
    sget v96, Lcom/android/settingslib/R$drawable;->ic_4g_mobiledata:I

    sput v96, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G:I

    .line 41
    sget v108, Lcom/android/settingslib/R$drawable;->ic_4g_plus_mobiledata:I

    sput v108, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_4G_PLUS:I

    .line 42
    sget v120, Lcom/android/settingslib/R$drawable;->ic_5g_e_mobiledata:I

    sput v120, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_E:I

    .line 43
    sget v132, Lcom/android/settingslib/R$drawable;->ic_1x_mobiledata:I

    sput v132, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_1X:I

    .line 44
    sget v144, Lcom/android/settingslib/R$drawable;->ic_5g_mobiledata:I

    sput v144, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G:I

    .line 45
    sget v156, Lcom/android/settingslib/R$drawable;->ic_5g_plus_mobiledata:I

    sput v156, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_5G_PLUS:I

    .line 46
    sget v168, Lcom/android/settingslib/R$drawable;->ic_carrier_wifi:I

    sput v168, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_CWF:I

    .line 48
    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sget-object v161, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/16 v158, 0x0

    aget v178, v161, v158

    sget v179, Lcom/android/settingslib/R$string;->carrier_network_change_mode:I

    const-string v170, "CARRIER_NETWORK_CHANGE"

    const/16 v171, 0x0

    const/16 v172, 0x0

    const/16 v174, 0x0

    const/16 v175, 0x0

    const/16 v176, 0x0

    const/16 v177, 0x0

    const/16 v180, 0x0

    const/16 v181, 0x0

    move-object/from16 v169, v0

    move-object/from16 v173, v161

    invoke-direct/range {v169 .. v181}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 61
    new-instance v15, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v82, v161, v158

    sget v83, Lcom/android/settingslib/R$string;->data_connection_3g:I

    const-string v74, "3G"

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v85, 0x1

    move-object/from16 v73, v15

    move-object/from16 v77, v161

    invoke-direct/range {v73 .. v85}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 74
    new-instance v14, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v178, v161, v158

    const-string v170, "WFC"

    const/16 v179, 0x0

    move-object/from16 v169, v14

    invoke-direct/range {v169 .. v181}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 85
    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v178, v161, v158

    const-string v170, "Unknown"

    move-object/from16 v169, v13

    invoke-direct/range {v169 .. v181}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 96
    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v46, v161, v158

    sget v47, Lcom/android/settingslib/R$string;->data_connection_edge:I

    const-string v38, "E"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v49, 0x0

    move-object/from16 v37, v11

    move-object/from16 v41, v161

    invoke-direct/range {v37 .. v49}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 109
    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v130, v161, v158

    sget v131, Lcom/android/settingslib/R$string;->data_connection_cdma:I

    const-string v122, "1X"

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v133, 0x1

    move-object/from16 v121, v10

    move-object/from16 v125, v161

    invoke-direct/range {v121 .. v133}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 122
    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v34, v161, v158

    sget v35, Lcom/android/settingslib/R$string;->data_connection_gprs:I

    const-string v26, "G"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    move-object/from16 v25, v9

    move-object/from16 v29, v161

    invoke-direct/range {v25 .. v37}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 135
    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v58, v161, v158

    sget v59, Lcom/android/settingslib/R$string;->data_connection_3_5g:I

    const-string v50, "H"

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v61, 0x0

    move-object/from16 v49, v8

    move-object/from16 v53, v161

    invoke-direct/range {v49 .. v61}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 148
    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v70, v161, v158

    sget v71, Lcom/android/settingslib/R$string;->data_connection_3_5g_plus:I

    const-string v62, "H+"

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v73, 0x0

    move-object/from16 v61, v7

    move-object/from16 v65, v161

    invoke-direct/range {v61 .. v73}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 161
    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v94, v161, v158

    sget v95, Lcom/android/settingslib/R$string;->data_connection_4g:I

    const-string v86, "4G"

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v97, 0x1

    move-object/from16 v85, v6

    move-object/from16 v89, v161

    invoke-direct/range {v85 .. v97}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 174
    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v106, v161, v158

    sget v107, Lcom/android/settingslib/R$string;->data_connection_4g_plus:I

    const-string v98, "4G+"

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v109, 0x1

    move-object/from16 v97, v5

    move-object/from16 v101, v161

    invoke-direct/range {v97 .. v109}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 187
    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v16, v161, v158

    sget v17, Lcom/android/settingslib/R$string;->data_connection_lte:I

    const-string v2, "LTE"

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object v1, v4

    move-object/from16 v25, v15

    move-object v15, v4

    move-object/from16 v4, v18

    move-object/from16 v182, v5

    move-object/from16 v5, v161

    move-object/from16 v183, v6

    move/from16 v6, v19

    move-object/from16 v184, v7

    move/from16 v7, v20

    move-object/from16 v185, v8

    move/from16 v8, v21

    move-object/from16 v186, v9

    move/from16 v9, v22

    move-object/from16 v187, v10

    move/from16 v10, v16

    move-object/from16 v188, v11

    move/from16 v11, v17

    move-object/from16 v189, v13

    move/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 200
    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v22, v161, v158

    sget v23, Lcom/android/settingslib/R$string;->data_connection_lte_plus:I

    const-string v2, "LTE+"

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x1

    move-object v13, v1

    move-object v5, v14

    move-object v14, v2

    move-object v6, v15

    move-object/from16 v2, v25

    move-object v15, v3

    move-object/from16 v17, v161

    move/from16 v25, v4

    invoke-direct/range {v13 .. v25}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 213
    new-instance v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v118, v161, v158

    sget v119, Lcom/android/settingslib/R$string;->data_connection_5ge_html:I

    const-string v110, "5Ge"

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v121, 0x1

    move-object/from16 v109, v3

    move-object/from16 v113, v161

    invoke-direct/range {v109 .. v121}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 226
    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v142, v161, v158

    sget v143, Lcom/android/settingslib/R$string;->data_connection_5g:I

    const-string v134, "5G"

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v145, 0x1

    move-object/from16 v133, v4

    move-object/from16 v137, v161

    invoke-direct/range {v133 .. v145}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 240
    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v154, v161, v158

    sget v155, Lcom/android/settingslib/R$string;->data_connection_5g_plus:I

    const-string v146, "5G_PLUS"

    const/16 v147, 0x0

    const/16 v148, 0x0

    const/16 v150, 0x0

    const/16 v151, 0x0

    const/16 v152, 0x0

    const/16 v153, 0x0

    const/16 v157, 0x1

    move-object/from16 v145, v7

    move-object/from16 v149, v161

    invoke-direct/range {v145 .. v157}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 254
    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v178, v161, v158

    sget v179, Lcom/android/settingslib/R$string;->cell_data_off_content_description:I

    const-string v170, "DataDisabled"

    move-object/from16 v169, v8

    invoke-direct/range {v169 .. v181}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 267
    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v178, v161, v158

    sget v179, Lcom/android/settingslib/R$string;->not_default_data_content_description:I

    const-string v170, "NotDefaultData"

    move-object/from16 v169, v9

    invoke-direct/range {v169 .. v181}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 280
    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    aget v166, v161, v158

    sget v167, Lcom/android/settingslib/R$string;->data_connection_carrier_wifi:I

    const-string v158, "CWF"

    const/16 v159, 0x0

    const/16 v160, 0x0

    const/16 v162, 0x0

    const/16 v163, 0x0

    const/16 v164, 0x0

    const/16 v165, 0x0

    const/16 v169, 0x1

    move-object/from16 v157, v10

    invoke-direct/range {v157 .. v169}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 300
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    const-string v11, "carrier_network_change"

    .line 301
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3g"

    .line 302
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wfc"

    .line 303
    invoke-interface {v10, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unknown"

    move-object/from16 v2, v189

    .line 304
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    move-object/from16 v2, v188

    .line 305
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1x"

    move-object/from16 v2, v187

    .line 306
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "g"

    move-object/from16 v2, v186

    .line 307
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "h"

    move-object/from16 v2, v185

    .line 308
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "h+"

    move-object/from16 v2, v184

    .line 309
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4g"

    move-object/from16 v2, v183

    .line 310
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4g+"

    move-object/from16 v2, v182

    .line 311
    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5ge"

    .line 312
    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lte"

    .line 313
    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lte+"

    .line 314
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5g"

    .line 315
    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5g_plus"

    .line 316
    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datadisable"

    .line 317
    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notdefaultdata"

    .line 318
    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
