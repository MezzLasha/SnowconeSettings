.class public Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;
.super Landroidx/loader/content/CursorLoader;
.source "UserDictionaryCursorLoader.java"


# static fields
.field static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "word"

    const-string v2, "shortcut"

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 10

    .line 71
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->QUERY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v4, "locale is null"

    const-string v6, "UPPER(word)"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->mLocale:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    new-array v5, v8, [Ljava/lang/String;

    aput-object v1, v5, v7

    const-string v4, "locale=?"

    const-string v6, "UPPER(word)"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 85
    :goto_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 86
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 88
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 89
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v5, v6, v8

    .line 90
    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v6

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 94
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    aput-object v5, v6, v4

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 86
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
