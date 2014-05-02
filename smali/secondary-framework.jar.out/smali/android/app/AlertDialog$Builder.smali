.class public Landroid/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/internal/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    .line 378
    iput p2, p0, Landroid/app/AlertDialog$Builder;->mTheme:I

    .line 379
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 932
    new-instance v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 933
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 934
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 939
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 940
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 941
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 942
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 945
    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 642
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 643
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 644
    return-object p0
.end method

.method public setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 565
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 566
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 661
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 662
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 664
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 425
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 426
    return-object p0
.end method

.method public setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 456
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 465
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 466
    return-object p0
.end method

.method public setIconAttribute(I)Landroid/app/AlertDialog$Builder;
    .locals 3
    .parameter "attrId"

    .prologue
    .line 475
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 476
    .local v0, out:Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 477
    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 478
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 912
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 913
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 614
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 615
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 616
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 626
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 627
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 628
    return-object p0
.end method

.method public setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 435
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 436
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 445
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 446
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 687
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 688
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 689
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 690
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 691
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 742
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 743
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 744
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 746
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 713
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 714
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 715
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 716
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 717
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 515
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 516
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 517
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 528
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 529
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 530
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 542
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 543
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 554
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 555
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 583
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 584
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "onDismissListener"

    .prologue
    .line 593
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 594
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 852
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 853
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 603
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 604
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 489
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 490
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 491
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 502
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 503
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 504
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 920
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 921
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 766
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 767
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 768
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 769
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 770
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 791
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 792
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 793
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 794
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 795
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 796
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 836
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 837
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 838
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 839
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 840
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 814
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 815
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 816
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 817
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 818
    return-object p0
.end method

.method public setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 399
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 400
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 409
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 410
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 865
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 866
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 867
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 894
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 895
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 896
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 897
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 898
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 899
    iget-object v0, p0, Landroid/app/AlertDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 900
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 954
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 955
    return-object v0
.end method
