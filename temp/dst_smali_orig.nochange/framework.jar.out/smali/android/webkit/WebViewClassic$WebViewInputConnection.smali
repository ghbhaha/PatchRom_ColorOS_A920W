.class Landroid/webkit/WebViewClassic$WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewInputConnection"
.end annotation


# instance fields
.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 181
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    .line 182
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 183
    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "numReplaced"

    .prologue
    const/4 v4, 0x0

    .line 641
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 643
    .local v0, editable:Landroid/text/Editable;
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .line 644
    .local v1, maxReplace:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 645
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 647
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 650
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #maxReplace:I
    :cond_0
    return-object p1
.end method

.method private restartInput()V
    .locals 2

    .prologue
    .line 654
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 655
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 658
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 660
    :cond_0
    return-void
.end method

.method private sendCharacter(C)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 606
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    .line 607
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 609
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 610
    .local v1, chars:[C
    aput-char p1, v1, v9

    .line 611
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 612
    .local v3, events:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 613
    move-object v0, v3

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 614
    .local v2, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 613
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v2           #event:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x91

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 618
    .local v6, msg:Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    .end local v6           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .parameter "keyCode"

    .prologue
    .line 628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 629
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 633
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 637
    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 16
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 542
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v3

    .line 544
    .local v3, editable:Landroid/text/Editable;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 545
    .local v7, original:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 546
    .local v4, isCharacterAdd:Z
    const/4 v5, 0x0

    .line 547
    .local v5, isCharacterDelete:Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 548
    .local v12, textLength:I
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 549
    .local v8, originalLength:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .line 550
    .local v11, selectionStart:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v10

    .line 551
    .local v10, selectionEnd:I
    if-ne v11, v10, :cond_0

    .line 552
    if-le v12, v8, :cond_5

    .line 553
    add-int/lit8 v13, v8, 0x1

    if-ne v12, v13, :cond_4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v7, v14, v8}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v4, 0x1

    .line 562
    :cond_0
    :goto_0
    if-eqz v4, :cond_7

    .line 563
    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendCharacter(C)V

    .line 577
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 578
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v6, newText:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-interface {v3, v13, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 580
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 581
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p2

    invoke-interface {v3, v0, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 583
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/AutoCompletePopup;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, autoText:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 585
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 590
    .end local v2           #autoText:Ljava/lang/String;
    .end local v6           #newText:Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .restart local v6       #newText:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-interface {v3, v13, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 593
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 594
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p2

    invoke-interface {v3, v0, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/webkit/DataListOptionsPopup;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .end local v6           #newText:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 599
    return-void

    .line 553
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 556
    :cond_5
    if-le v8, v12, :cond_0

    .line 557
    add-int/lit8 v13, v8, -0x1

    if-ne v12, v13, :cond_6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v7, v14, v12}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v5, 0x1

    :goto_2
    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 564
    :cond_7
    if-eqz v5, :cond_8

    .line 565
    const/16 v13, 0x43

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 568
    :cond_8
    if-ne v12, v8, :cond_9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v7, v14, v12}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v13

    if-nez v13, :cond_1

    .line 573
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v13, v13, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v14, 0x8f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 575
    .local v9, replaceMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v13, v13, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 522
    .local v6, editable:Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 523
    .local v2, selectionStart:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 524
    .local v3, selectionEnd:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 525
    .local v4, composingStart:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 526
    .local v5, composingEnd:I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 527
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)V

    .line 203
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 340
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v8, -0x1

    .line 348
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 349
    .local v4, content:Landroid/text/Editable;
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 350
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 352
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 353
    move v7, v0

    .line 354
    .local v7, tmp:I
    move v0, v1

    .line 355
    move v1, v7

    .line 358
    .end local v7           #tmp:I
    :cond_0
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 359
    .local v2, ca:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 360
    .local v3, cb:I
    if-ge v3, v2, :cond_1

    .line 361
    move v7, v2

    .line 362
    .restart local v7       #tmp:I
    move v2, v3

    .line 363
    move v3, v7

    .line 365
    .end local v7           #tmp:I
    :cond_1
    if-eq v2, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 366
    if-ge v2, v0, :cond_2

    move v0, v2

    .line 367
    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    .line 370
    :cond_3
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    add-int v9, v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 371
    .local v5, endDelete:I
    if-le v5, v1, :cond_4

    .line 372
    const-string v8, ""

    invoke-direct {p0, v1, v5, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 374
    :cond_4
    const/4 v8, 0x0

    sub-int v9, v0, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 375
    .local v6, startDelete:I
    if-ge v6, v0, :cond_5

    .line 376
    const-string v8, ""

    invoke-direct {p0, v6, v0, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 378
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v8

    return v8
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 210
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method public initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 5
    .parameter "initData"

    .prologue
    .line 414
    iget v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mType:I

    .line 415
    .local v3, type:I
    const/16 v2, 0xa1

    .line 417
    .local v2, inputType:I
    const/high16 v1, 0x1200

    .line 419
    .local v1, imeOptions:I
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v4, :cond_0

    .line 420
    const/high16 v4, 0x8

    or-int/2addr v2, v4

    .line 422
    :cond_0
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    .line 423
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v4, :cond_1

    .line 424
    const/high16 v4, 0x800

    or-int/2addr v1, v4

    .line 426
    :cond_1
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v4, :cond_2

    .line 427
    const/high16 v4, 0x400

    or-int/2addr v1, v4

    .line 430
    :cond_2
    const/4 v0, 0x2

    .line 431
    .local v0, action:I
    packed-switch v3, :pswitch_data_0

    .line 470
    :goto_0
    :pswitch_0
    or-int/2addr v1, v0

    .line 471
    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    .line 472
    iput v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 473
    iput v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    .line 474
    iget v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    .line 475
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    .line 476
    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    .line 477
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 480
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 481
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/DataListOptionsPopup;->clearAdapter()V

    .line 484
    :cond_3
    return-void

    .line 435
    :pswitch_1
    const v4, 0x2c000

    or-int/2addr v2, v4

    .line 438
    const/4 v0, 0x1

    .line 439
    goto :goto_0

    .line 441
    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    .line 442
    goto :goto_0

    .line 444
    :pswitch_3
    const/4 v0, 0x3

    .line 445
    goto :goto_0

    .line 448
    :pswitch_4
    const/16 v2, 0xd1

    .line 450
    goto :goto_0

    .line 453
    :pswitch_5
    const/16 v2, 0x3002

    .line 457
    goto :goto_0

    .line 460
    :pswitch_6
    const/4 v2, 0x3

    .line 461
    goto :goto_0

    .line 465
    :pswitch_7
    or-int/lit8 v2, v2, 0x10

    .line 466
    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .parameter "editorAction"

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 384
    const/4 v0, 0x1

    .line 385
    .local v0, handled:Z
    packed-switch p1, :pswitch_data_0

    .line 406
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 410
    :goto_0
    return v0

    .line 387
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 393
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 397
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    .line 398
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 401
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 297
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 298
    .local v3, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 299
    .local v2, selectionEnd:I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 300
    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 301
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 302
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 304
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 305
    .local v1, newCaret:I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 306
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v10, 0x70

    const/16 v9, 0x43

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 224
    iget-boolean v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v7, :cond_3

    .line 225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 230
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 231
    .local v0, content:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 232
    .local v4, start:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 233
    .local v1, end:I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 234
    .local v3, selection:I
    if-le v4, v1, :cond_0

    .line 235
    move v5, v4

    .line 236
    .local v5, tmp:I
    move v4, v1

    .line 237
    move v1, v5

    .line 239
    .end local v5           #tmp:I
    :cond_0
    if-ne v4, v1, :cond_2

    .line 240
    invoke-virtual {p0, v6, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v6

    .line 278
    .end local v0           #content:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v3           #selection:I
    .end local v4           #start:I
    :cond_1
    :goto_0
    return v6

    .line 242
    .restart local v0       #content:Landroid/text/Editable;
    .restart local v1       #end:I
    .restart local v3       #selection:I
    .restart local v4       #start:I
    :cond_2
    invoke-virtual {p0, v3, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 243
    sub-int v6, v1, v4

    invoke-virtual {p0, v6, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    .line 278
    .end local v0           #content:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v3           #selection:I
    .end local v4           #start:I
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 250
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 251
    .restart local v0       #content:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 252
    .restart local v4       #start:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 253
    .restart local v1       #end:I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 254
    .restart local v3       #selection:I
    if-le v4, v1, :cond_5

    .line 255
    move v5, v4

    .line 256
    .restart local v5       #tmp:I
    move v4, v1

    .line 257
    move v1, v5

    .line 259
    .end local v5           #tmp:I
    :cond_5
    if-ne v4, v1, :cond_6

    .line 260
    invoke-virtual {p0, v8, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v6

    goto :goto_0

    .line 262
    :cond_6
    invoke-virtual {p0, v3, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 263
    sub-int v6, v1, v4

    invoke-virtual {p0, v8, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    .line 266
    .end local v0           #content:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v3           #selection:I
    .end local v4           #start:I
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    if-eqz v7, :cond_3

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, newComposingText:Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v6

    goto :goto_0

    .line 271
    .end local v2           #newComposingText:Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-eq v7, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-eq v7, v10, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0
.end method

.method public setAutoFillable(I)V
    .locals 6
    .parameter "queryId"

    .prologue
    .line 186
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    .line 188
    iget v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 189
    .local v0, variation:I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 192
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    .line 196
    :cond_1
    return-void

    .line 186
    .end local v0           #variation:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 512
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 513
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 514
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 311
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 312
    .local v4, start:I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 313
    .local v1, end:I
    if-ltz v4, :cond_0

    if-gez v1, :cond_1

    .line 314
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 315
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 317
    :cond_1
    if-ge v1, v4, :cond_2

    .line 318
    move v5, v1

    .line 319
    .local v5, temp:I
    move v1, v4

    .line 320
    move v4, v5

    .line 322
    .end local v5           #temp:I
    :cond_2
    sub-int v6, v1, v4

    invoke-direct {p0, p1, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 323
    .local v3, limitedText:Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 324
    if-eq v3, p1, :cond_3

    .line 325
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p2, v6

    .line 327
    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 328
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 329
    if-eq v3, p1, :cond_4

    .line 330
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v2, v4, v6

    .line 331
    .local v2, lastCaret:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 332
    invoke-virtual {p0, v2, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 334
    .end local v2           #lastCaret:I
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public setSelection(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 505
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .line 506
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 507
    return v0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 283
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 284
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 285
    .local v1, selectionEnd:I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 286
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 287
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 289
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 290
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 291
    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 292
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 293
    return-void
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 487
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 488
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 489
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 490
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 492
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 493
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 494
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 495
    .local v1, selectionEnd:I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 496
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 497
    move v1, v2

    .line 499
    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 500
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 501
    return-void
.end method
