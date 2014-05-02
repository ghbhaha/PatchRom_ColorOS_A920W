.class public Landroid/widget/AmoiTimePicker;
.super Landroid/widget/FrameLayout;
.source "AmoiTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AmoiTimePicker$SavedState;,
        Landroid/widget/AmoiTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;

.field private mSetButton:Landroid/widget/Button;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Landroid/widget/AmoiTimePicker$1;

    invoke-direct {v0}, Landroid/widget/AmoiTimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/AmoiTimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AmoiTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const v0, 0x10103df

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AmoiTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const v9, 0x102033e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean v8, p0, Landroid/widget/AmoiTimePicker;->mIsEnabled:Z

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/AmoiTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 136
    sget-object v4, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 138
    .local v1, attributesArray:Landroid/content/res/TypedArray;
    const v4, 0x10900dc

    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 140
    .local v3, layoutResourceId:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 144
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    const v4, 0x102039a

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 148
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/AmoiTimePicker$2;

    invoke-direct {v5, p0}, Landroid/widget/AmoiTimePicker$2;-><init>(Landroid/widget/AmoiTimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 161
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 162
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 165
    const v4, 0x102039e

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mDivider:Landroid/widget/TextView;

    .line 166
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mDivider:Landroid/widget/TextView;

    const v5, 0x1040070

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :cond_0
    const v4, 0x102039b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 172
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 173
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 174
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 175
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 176
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/AmoiTimePicker$3;

    invoke-direct {v5, p0}, Landroid/widget/AmoiTimePicker$3;-><init>(Landroid/widget/AmoiTimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 199
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 200
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 203
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 206
    const v4, 0x102039c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, amPmView:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 208
    iput-object v10, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 209
    iput-object v10, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 210
    check-cast v0, Landroid/widget/Button;

    .end local v0           #amPmView:Landroid/view/View;
    iput-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 211
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/AmoiTimePicker$4;

    invoke-direct {v5, p0}, Landroid/widget/AmoiTimePicker$4;-><init>(Landroid/widget/AmoiTimePicker;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :goto_0
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateHourControl()V

    .line 240
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateAmPmControl()V

    .line 242
    sget-object v4, Landroid/widget/AmoiTimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Landroid/widget/AmoiTimePicker;->setOnTimeChangedListener(Landroid/widget/AmoiTimePicker$OnTimeChangedListener;)V

    .line 245
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AmoiTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 246
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AmoiTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    invoke-virtual {p0, v7}, Landroid/widget/AmoiTimePicker;->setEnabled(Z)V

    .line 253
    :cond_1
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->setContentDescriptions()V

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 257
    invoke-virtual {p0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 259
    :cond_2
    return-void

    .line 220
    .restart local v0       #amPmView:Landroid/view/View;
    :cond_3
    iput-object v10, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 221
    check-cast v0, Landroid/widget/NumberPicker;

    .end local v0           #amPmView:Landroid/view/View;
    iput-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 222
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 223
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 224
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v5, p0, Landroid/widget/AmoiTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/AmoiTimePicker$5;

    invoke-direct {v5, p0}, Landroid/widget/AmoiTimePicker$5;-><init>(Landroid/widget/AmoiTimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 234
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 235
    iget-object v4, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AmoiTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AmoiTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/widget/AmoiTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/AmoiTimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/widget/AmoiTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/AmoiTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AmoiTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 540
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 541
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mOnTimeChangedListener:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mOnTimeChangedListener:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/AmoiTimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/AmoiTimePicker;II)V

    .line 544
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x102033f

    const v2, 0x102033d

    .line 548
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c4

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/AmoiTimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 550
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c5

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/AmoiTimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 553
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c6

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/AmoiTimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 555
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c7

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/AmoiTimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 558
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c8

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/AmoiTimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 561
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c9

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/AmoiTimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 564
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iput-object p1, p0, Landroid/widget/AmoiTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 301
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AmoiTimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    .line 567
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 537
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 527
    :cond_1
    iget-boolean v2, p0, Landroid/widget/AmoiTimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 528
    .local v0, index:I
    :goto_1
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 529
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 530
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 527
    .end local v0           #index:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 532
    .restart local v0       #index:I
    :cond_3
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/AmoiTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 510
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 511
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 517
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 514
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 515
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 579
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 580
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 583
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 587
    :cond_2
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Landroid/widget/AmoiTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 379
    iget-object v1, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 380
    .local v0, currentHour:I
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    .line 382
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AmoiTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 383
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 385
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Landroid/widget/AmoiTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Landroid/widget/AmoiTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/AmoiTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 289
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 498
    const-class v0, Landroid/widget/AmoiTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 504
    const-class v0, Landroid/widget/AmoiTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 482
    const/4 v0, 0x1

    .line 483
    .local v0, flags:I
    iget-boolean v2, p0, Landroid/widget/AmoiTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 484
    or-int/lit16 v0, v0, 0x80

    .line 488
    :goto_0
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 489
    iget-object v2, p0, Landroid/widget/AmoiTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 490
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/AmoiTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    return-void

    .line 486
    .end local v1           #selectedDateUtterance:Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 360
    move-object v0, p1

    check-cast v0, Landroid/widget/AmoiTimePicker$SavedState;

    .line 361
    .local v0, ss:Landroid/widget/AmoiTimePicker$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 362
    invoke-virtual {v0}, Landroid/widget/AmoiTimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AmoiTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 363
    invoke-virtual {v0}, Landroid/widget/AmoiTimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AmoiTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 364
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 354
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 355
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AmoiTimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/AmoiTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/AmoiTimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentHour"

    .prologue
    const/16 v1, 0xc

    .line 394
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AmoiTimePicker;->mIsAm:Z

    .line 401
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 410
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateAmPmControl()V

    .line 412
    :cond_3
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 413
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->onTimeChanged()V

    goto :goto_0

    .line 405
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AmoiTimePicker;->mIsAm:Z

    .line 406
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentMinute"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 456
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/widget/AmoiTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    :cond_1
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 277
    :goto_1
    iput-boolean p1, p0, Landroid/widget/AmoiTimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "is24HourView"

    .prologue
    .line 422
    iget-boolean v1, p0, Landroid/widget/AmoiTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AmoiTimePicker;->mIs24HourView:Z

    .line 427
    invoke-virtual {p0}, Landroid/widget/AmoiTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, currentHour:I
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateHourControl()V

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AmoiTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 431
    invoke-direct {p0}, Landroid/widget/AmoiTimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/AmoiTimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/widget/AmoiTimePicker;->mOnTimeChangedListener:Landroid/widget/AmoiTimePicker$OnTimeChangedListener;

    .line 373
    return-void
.end method

.method public setSetButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 460
    iput-object p1, p0, Landroid/widget/AmoiTimePicker;->mSetButton:Landroid/widget/Button;

    .line 461
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mSetButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Landroid/widget/AmoiTimePicker;->mSetButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
