.class Landroidx/constraintlayout/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .registers 9
    .param p0, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 48
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 49
    .local v2, "chainsArray":[Landroidx/constraintlayout/solver/widgets/ChainHead;
    if-nez p2, :cond_b

    .line 50
    const/4 v0, 0x0

    .line 51
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    goto :goto_10

    .line 54
    :cond_b
    const/4 v0, 0x2

    .line 55
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 59
    :goto_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_2f

    .line 60
    aget-object v4, v2, v3

    .line 63
    .local v4, "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    .line 64
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 65
    invoke-static {p0, p1, p2, v0, v4}, Landroidx/constraintlayout/solver/widgets/Optimizer;->applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 66
    invoke-static {p0, p1, p2, v0, v4}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    goto :goto_2c

    .line 69
    :cond_29
    invoke-static {p0, p1, p2, v0, v4}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    .line 59
    .end local v4    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 72
    .end local v3    # "i":I
    :cond_2f
    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V
    .registers 49
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 87
    .local v12, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 88
    .local v13, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v14, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 89
    .local v14, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 90
    .local v15, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 92
    .local v9, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v12

    .line 93
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 94
    .local v2, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 96
    .local v3, "done":Z
    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 97
    .local v4, "totalWeights":F
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 98
    .local v8, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 100
    .local v7, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v16, v1

    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v16, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-ne v5, v6, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    move/from16 v18, v5

    .line 101
    .local v18, "isWrapContent":Z
    const/4 v5, 0x0

    .line 102
    .local v5, "isChainSpread":Z
    const/4 v6, 0x0

    .line 103
    .local v6, "isChainSpreadInside":Z
    const/16 v19, 0x0

    .line 105
    .local v19, "isChainPacked":Z
    if-nez p2, :cond_52

    .line 106
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 107
    .end local v5    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    :goto_35
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .local v22, "isChainSpread":Z
    if-ne v5, v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 108
    .end local v6    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_3f
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    .end local v19    # "isChainPacked":Z
    .local v5, "isChainPacked":Z
    goto :goto_75

    .line 110
    .end local v1    # "isChainSpreadInside":Z
    .end local v22    # "isChainSpread":Z
    .local v5, "isChainSpread":Z
    .restart local v6    # "isChainSpreadInside":Z
    .restart local v19    # "isChainPacked":Z
    :cond_52
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_58

    const/4 v1, 0x1

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    .line 111
    .end local v5    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    :goto_59
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .restart local v22    # "isChainSpread":Z
    if-ne v5, v1, :cond_62

    const/4 v1, 0x1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    .line 112
    .end local v6    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_63
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6a

    const/4 v5, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v5, 0x0

    :goto_6b
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    .line 119
    .end local v1    # "isChainSpreadInside":Z
    .end local v2    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "done":Z
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v16, "isChainSpreadInside":Z
    .local v19, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v21, "done":Z
    .local v23, "isChainPacked":Z
    :goto_75
    const/4 v3, 0x5

    if-nez v21, :cond_159

    .line 120
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    .line 121
    .local v2, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x4

    .line 122
    .local v24, "strength":I
    if-nez v18, :cond_82

    if-eqz v23, :cond_84

    .line 123
    :cond_82
    const/16 v24, 0x1

    .line 125
    :cond_84
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 127
    .local v25, "margin":I
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_99

    if-eq v6, v12, :cond_99

    .line 128
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int v25, v25, v5

    move/from16 v5, v25

    goto :goto_9b

    .line 131
    :cond_99
    move/from16 v5, v25

    .end local v25    # "margin":I
    .local v5, "margin":I
    :goto_9b
    if-eqz v23, :cond_a6

    if-eq v6, v12, :cond_a6

    if-eq v6, v14, :cond_a6

    .line 132
    const/16 v24, 0x6

    move/from16 v27, v24

    goto :goto_b1

    .line 133
    :cond_a6
    if-eqz v22, :cond_af

    if-eqz v18, :cond_af

    .line 136
    const/16 v24, 0x4

    move/from16 v27, v24

    goto :goto_b1

    .line 139
    :cond_af
    move/from16 v27, v24

    .end local v24    # "strength":I
    .local v27, "strength":I
    :goto_b1
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_db

    .line 140
    if-ne v6, v14, :cond_c3

    .line 141
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v25, v4

    .end local v4    # "totalWeights":F
    .local v25, "totalWeights":F
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v10, v1, v4, v5, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_cf

    .line 144
    .end local v25    # "totalWeights":F
    .restart local v4    # "totalWeights":F
    :cond_c3
    move/from16 v25, v4

    .end local v4    # "totalWeights":F
    .restart local v25    # "totalWeights":F
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v3, 0x6

    invoke-virtual {v10, v1, v4, v5, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 147
    :goto_cf
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v4, v27

    .end local v27    # "strength":I
    .local v4, "strength":I
    invoke-virtual {v10, v1, v3, v5, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_df

    .line 139
    .end local v25    # "totalWeights":F
    .local v4, "totalWeights":F
    .restart local v27    # "strength":I
    :cond_db
    move/from16 v25, v4

    move/from16 v4, v27

    .line 151
    .end local v27    # "strength":I
    .local v4, "strength":I
    .restart local v25    # "totalWeights":F
    :goto_df
    if-eqz v18, :cond_11f

    .line 152
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_109

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_109

    .line 154
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v1, v3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v26, v2

    move/from16 v27, v4

    const/4 v2, 0x5

    const/4 v4, 0x0

    .end local v2    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "strength":I
    .local v26, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v27    # "strength":I
    invoke-virtual {v10, v1, v3, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_10d

    .line 152
    .end local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    .restart local v2    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "strength":I
    :cond_109
    move-object/from16 v26, v2

    move/from16 v27, v4

    .line 158
    .end local v2    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "strength":I
    .restart local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v27    # "strength":I
    :goto_10d
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v4, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_123

    .line 151
    .end local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    .restart local v2    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v4    # "strength":I
    :cond_11f
    move-object/from16 v26, v2

    move/from16 v27, v4

    .line 164
    .end local v2    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "strength":I
    .restart local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v27    # "strength":I
    :goto_123
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 165
    .local v1, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_149

    .line 166
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 167
    .end local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_145

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v3, v6, :cond_142

    goto :goto_145

    :cond_142
    move-object/from16 v19, v2

    goto :goto_14c

    .line 168
    :cond_145
    :goto_145
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_14c

    .line 171
    .end local v2    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_149
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 173
    :goto_14c
    if-eqz v19, :cond_152

    .line 174
    move-object/from16 v2, v19

    move-object v6, v2

    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_155

    .line 176
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_152
    const/4 v2, 0x1

    move/from16 v21, v2

    .line 178
    .end local v1    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "margin":I
    .end local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    :goto_155
    move/from16 v4, v25

    goto/16 :goto_75

    .line 181
    .end local v25    # "totalWeights":F
    .local v4, "totalWeights":F
    :cond_159
    move/from16 v25, v4

    .end local v4    # "totalWeights":F
    .restart local v25    # "totalWeights":F
    if-eqz v15, :cond_183

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_183

    .line 182
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 183
    .local v1, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 184
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    .line 183
    const/4 v5, 0x5

    invoke-virtual {v10, v2, v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_184

    .line 181
    .end local v1    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_183
    const/4 v5, 0x5

    .line 189
    :goto_184
    if-eqz v18, :cond_1a4

    .line 190
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 192
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 190
    const/4 v4, 0x6

    invoke-virtual {v10, v1, v2, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 196
    :cond_1a4
    iget-object v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 197
    .local v4, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    if-eqz v4, :cond_299

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 199
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_28e

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v20, 0x0

    .line 203
    .local v20, "lastWeight":F
    iget-boolean v2, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v2, :cond_1be

    iget-boolean v2, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v2, :cond_1be

    .line 204
    iget v2, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v2, v2

    .end local v25    # "totalWeights":F
    .local v2, "totalWeights":F
    goto :goto_1c0

    .line 207
    .end local v2    # "totalWeights":F
    .restart local v25    # "totalWeights":F
    :cond_1be
    move/from16 v2, v25

    .end local v25    # "totalWeights":F
    .restart local v2    # "totalWeights":F
    :goto_1c0
    const/16 v25, 0x0

    move/from16 v5, v25

    .local v5, "i":I
    :goto_1c4
    if-ge v5, v1, :cond_27f

    .line 208
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 209
    .local v0, "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v37, v1

    .end local v1    # "count":I
    .local v37, "count":I
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v1, v1, p2

    .line 211
    .local v1, "currentWeight":F
    const/16 v25, 0x0

    cmpg-float v28, v1, v25

    if-gez v28, :cond_208

    .line 212
    move/from16 v28, v1

    .end local v1    # "currentWeight":F
    .local v28, "currentWeight":F
    iget-boolean v1, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v1, :cond_1ff

    .line 213
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v1, v1, v25

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v4

    .end local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v38, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v39, v6

    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v39, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v6, 0x4

    move-object/from16 v40, v7

    const/4 v7, 0x0

    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v40, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v1, v4, v7, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 215
    move-object/from16 v17, v8

    const/4 v7, 0x6

    const/4 v8, 0x0

    goto/16 :goto_26f

    .line 217
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1ff
    move-object/from16 v38, v4

    move-object/from16 v39, v6

    move-object/from16 v40, v7

    .end local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/high16 v1, 0x3f800000    # 1.0f

    .end local v28    # "currentWeight":F
    .restart local v1    # "currentWeight":F
    goto :goto_210

    .line 211
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_208
    move/from16 v28, v1

    move-object/from16 v38, v4

    move-object/from16 v39, v6

    move-object/from16 v40, v7

    .line 219
    .end local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_210
    cmpl-float v4, v1, v25

    if-nez v4, :cond_22a

    .line 220
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v17, v8

    const/4 v7, 0x6

    const/4 v8, 0x0

    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v17, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v4, v6, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 222
    goto :goto_26f

    .line 225
    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_22a
    move-object/from16 v17, v8

    const/4 v7, 0x6

    const/4 v8, 0x0

    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_269

    .line 226
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 227
    .local v4, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v6, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v6, v6, v24

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 228
    .local v6, "end":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 229
    .local v7, "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v8, v8, v25

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 230
    .local v8, "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v25, v3

    .end local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v25, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v3

    .line 231
    .local v3, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v28, v3

    move/from16 v29, v20

    move/from16 v30, v2

    move/from16 v31, v1

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    invoke-virtual/range {v28 .. v35}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    .line 233
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_26b

    .line 225
    .end local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_269
    move-object/from16 v25, v3

    .line 236
    .end local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v25    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_26b
    move-object v3, v0

    .line 237
    .end local v25    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v4, v1

    move/from16 v20, v4

    .line 207
    .end local v0    # "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v1    # "currentWeight":F
    :goto_26f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move/from16 v1, v37

    move-object/from16 v4, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    goto/16 :goto_1c4

    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v37    # "count":I
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "count":I
    .local v4, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_27f
    move/from16 v37, v1

    move-object/from16 v25, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v8

    .end local v1    # "count":I
    .end local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v25    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v37    # "count":I
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v25, v2

    goto :goto_2a1

    .line 199
    .end local v2    # "totalWeights":F
    .end local v5    # "i":I
    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v20    # "lastWeight":F
    .end local v37    # "count":I
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v25, "totalWeights":F
    :cond_28e
    move/from16 v37, v1

    move-object/from16 v38, v4

    move-object/from16 v39, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v8

    .end local v1    # "count":I
    .end local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v37    # "count":I
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_2a1

    .line 197
    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v37    # "count":I
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_299
    move-object/from16 v38, v4

    move-object/from16 v39, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v8

    .line 254
    .end local v4    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2a1
    if-eqz v14, :cond_348

    if-eq v14, v15, :cond_2b2

    if-eqz v23, :cond_2a8

    goto :goto_2b2

    :cond_2a8
    move-object/from16 v35, v9

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v33, v40

    goto/16 :goto_350

    .line 255
    :cond_2b2
    :goto_2b2
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 256
    .local v1, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 257
    .local v2, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2cd

    iget-object v3, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_2ce

    :cond_2cd
    const/4 v3, 0x0

    :goto_2ce
    move-object/from16 v20, v3

    .line 258
    .local v20, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2e5

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_2e6

    :cond_2e5
    const/4 v3, 0x0

    :goto_2e6
    move-object/from16 v24, v3

    .line 259
    .local v24, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    if-ne v14, v15, :cond_2f7

    .line 260
    iget-object v3, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, p3

    .line 261
    iget-object v3, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v3, v4

    move-object v8, v1

    move-object v7, v2

    goto :goto_2f9

    .line 259
    :cond_2f7
    move-object v8, v1

    move-object v7, v2

    .line 263
    .end local v1    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v7, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v8, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_2f9
    if-eqz v20, :cond_33a

    if-eqz v24, :cond_33a

    .line 264
    const/high16 v1, 0x3f000000    # 0.5f

    .line 265
    .local v1, "bias":F
    if-nez p2, :cond_306

    .line 266
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v26, v1

    goto :goto_30a

    .line 268
    :cond_306
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v26, v1

    .line 270
    .end local v1    # "bias":F
    .local v26, "bias":F
    :goto_30a
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 271
    .local v27, "beginMargin":I
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v28

    .line 272
    .local v28, "endMargin":I
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v29, 0x5

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move-object/from16 v30, v38

    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v30, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v32, v6

    move-object/from16 v31, v39

    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v31, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v6, v24

    move-object/from16 v34, v7

    move-object/from16 v33, v40

    .end local v7    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v33, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v34, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v32

    move-object/from16 v32, v8

    .end local v8    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v32, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v8, v28

    move-object/from16 v35, v9

    .end local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v35, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v29

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_346

    .line 263
    .end local v26    # "bias":F
    .end local v27    # "beginMargin":I
    .end local v28    # "endMargin":I
    .end local v30    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v32    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v33    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v34    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_33a
    move-object/from16 v34, v7

    move-object/from16 v32, v8

    move-object/from16 v35, v9

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v33, v40

    .line 275
    .end local v7    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v24    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v30    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v33    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_346
    goto/16 :goto_634

    .line 254
    .end local v30    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v33    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_348
    move-object/from16 v35, v9

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v33, v40

    .line 275
    .end local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v38    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v30    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v33    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_350
    if-eqz v22, :cond_49f

    if-eqz v14, :cond_49f

    .line 277
    move-object v1, v14

    .line 278
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 279
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_363

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_363

    const/16 v27, 0x1

    goto :goto_365

    :cond_363
    const/16 v27, 0x0

    :goto_365
    move/from16 v20, v27

    move-object v8, v1

    move-object v9, v2

    .line 280
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v9, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v20, "applyFixedEquality":Z
    :goto_369
    if-eqz v8, :cond_497

    .line 281
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    move-object v7, v1

    .line 282
    .end local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_370
    if-eqz v7, :cond_37f

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_381

    .line 283
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    goto :goto_370

    .line 282
    :cond_37f
    const/16 v5, 0x8

    .line 285
    :cond_381
    if-nez v7, :cond_390

    if-ne v8, v15, :cond_386

    goto :goto_390

    :cond_386
    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    const/16 v0, 0x8

    goto/16 :goto_485

    .line 286
    :cond_390
    :goto_390
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 287
    .local v6, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v4, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 288
    .local v4, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_39f

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3a0

    :cond_39f
    const/4 v1, 0x0

    .line 289
    .local v1, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_3a0
    if-eq v9, v8, :cond_3ad

    .line 290
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v19, v1

    goto :goto_3c9

    .line 291
    :cond_3ad
    if-ne v8, v14, :cond_3c7

    if-ne v9, v8, :cond_3c7

    .line 292
    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_3c2

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3c3

    :cond_3c2
    const/4 v2, 0x0

    :goto_3c3
    move-object v1, v2

    move-object/from16 v19, v1

    goto :goto_3c9

    .line 295
    :cond_3c7
    move-object/from16 v19, v1

    .end local v1    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v19, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_3c9
    const/4 v1, 0x0

    .line 296
    .local v1, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 297
    .local v2, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 298
    .local v3, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    .line 299
    .local v24, "beginMargin":I
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v27, p3, 0x1

    aget-object v0, v0, v27

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 301
    .local v0, "nextMargin":I
    if-eqz v7, :cond_3f1

    .line 302
    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v5, p3

    .line 303
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 304
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v5, v5, v28

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-object/from16 v31, v3

    goto :goto_40b

    .line 306
    :cond_3f1
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v5, v5, v28

    iget-object v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 307
    if-eqz v1, :cond_3fd

    .line 308
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 310
    :cond_3fd
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v5, v5, v28

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-object/from16 v31, v3

    .line 313
    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v28, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v29, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .local v31, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_40b
    if-eqz v28, :cond_412

    .line 314
    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_412
    if-eqz v9, :cond_420

    .line 317
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v24, v24, v1

    .line 319
    :cond_420
    if-eqz v4, :cond_477

    if-eqz v19, :cond_477

    if-eqz v29, :cond_477

    if-eqz v31, :cond_477

    .line 320
    move/from16 v1, v24

    .line 321
    .local v1, "margin1":I
    if-ne v8, v14, :cond_437

    .line 322
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v32, v1

    goto :goto_439

    .line 321
    :cond_437
    move/from16 v32, v1

    .line 324
    .end local v1    # "margin1":I
    .local v32, "margin1":I
    :goto_439
    move v1, v0

    .line 325
    .local v1, "margin2":I
    if-ne v8, v15, :cond_449

    .line 326
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v34, v1

    goto :goto_44b

    .line 325
    :cond_449
    move/from16 v34, v1

    .line 328
    .end local v1    # "margin2":I
    .local v34, "margin2":I
    :goto_44b
    const/4 v1, 0x4

    .line 329
    .local v1, "strength":I
    if-eqz v20, :cond_452

    .line 330
    const/4 v1, 0x6

    move/from16 v36, v1

    goto :goto_454

    .line 329
    :cond_452
    move/from16 v36, v1

    .line 332
    .end local v1    # "strength":I
    .local v36, "strength":I
    :goto_454
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v19

    move-object/from16 v37, v4

    .end local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v37, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, v32

    move/from16 v38, v0

    const/16 v0, 0x8

    .end local v0    # "nextMargin":I
    .local v38, "nextMargin":I
    move-object/from16 v27, v6

    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v27, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v29

    move-object/from16 v39, v7

    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v39, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v31

    move-object/from16 v40, v8

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v40, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v8, v34

    move-object/from16 v41, v9

    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v41, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v36

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_485

    .line 319
    .end local v27    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v32    # "margin1":I
    .end local v34    # "margin2":I
    .end local v36    # "strength":I
    .end local v37    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v38    # "nextMargin":I
    .end local v39    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v0    # "nextMargin":I
    .restart local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_477
    move/from16 v38, v0

    move-object/from16 v37, v4

    move-object/from16 v27, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    const/16 v0, 0x8

    .line 337
    .end local v0    # "nextMargin":I
    .end local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v24    # "beginMargin":I
    .end local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v39    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_485
    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_48f

    .line 338
    move-object/from16 v1, v40

    move-object v9, v1

    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_491

    .line 337
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_48f
    move-object/from16 v9, v41

    .line 340
    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_491
    move-object/from16 v8, v39

    move-object/from16 v19, v39

    .end local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto/16 :goto_369

    .line 280
    .end local v39    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v19, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_497
    move-object/from16 v40, v8

    move-object/from16 v41, v9

    .line 342
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v20    # "applyFixedEquality":Z
    .restart local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v31, v40

    goto/16 :goto_634

    .line 275
    .end local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v31, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_49f
    const/16 v0, 0x8

    .line 342
    if-eqz v16, :cond_634

    if-eqz v14, :cond_634

    .line 344
    move-object v1, v14

    .line 345
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 346
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_4b4

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_4b4

    const/16 v27, 0x1

    goto :goto_4b6

    :cond_4b4
    const/16 v27, 0x0

    :goto_4b6
    move/from16 v20, v27

    move-object v8, v1

    move-object v9, v2

    .line 347
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v20    # "applyFixedEquality":Z
    :goto_4ba
    if-eqz v8, :cond_5ab

    .line 348
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 349
    .end local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4c0
    if-eqz v1, :cond_4cd

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_4cd

    .line 350
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v2, p2

    goto :goto_4c0

    .line 352
    :cond_4cd
    if-eq v8, v14, :cond_591

    if-eq v8, v15, :cond_591

    if-eqz v1, :cond_591

    .line 353
    if-ne v1, v15, :cond_4d8

    .line 354
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_4d9

    .line 353
    :cond_4d8
    move-object v7, v1

    .line 356
    .end local v1    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4d9
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 357
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 358
    .local v5, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4e8

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_4e9

    :cond_4e8
    const/4 v1, 0x0

    .line 359
    .local v1, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_4e9
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 360
    .end local v1    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v4, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v1, 0x0

    .line 361
    .local v1, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 362
    .local v2, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 363
    .restart local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v19

    .line 364
    .local v19, "beginMargin":I
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v0, v0, v24

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 366
    .restart local v0    # "nextMargin":I
    if-eqz v7, :cond_51f

    .line 367
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v24, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 368
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 369
    move-object/from16 v24, v2

    .end local v2    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .local v24, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_517

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_518

    :cond_517
    const/4 v2, 0x0

    :goto_518
    move-object/from16 v28, v2

    move-object/from16 v29, v24

    move-object/from16 v24, v1

    .end local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v2, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_53b

    .line 371
    .end local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .local v2, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_51f
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v24, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v1, v1, v28

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 372
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_52d

    .line 373
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 375
    :cond_52d
    move-object/from16 v24, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v24    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v1, v1, v28

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    .line 378
    .end local v2    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v28, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_53b
    if-eqz v24, :cond_542

    .line 379
    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_542
    if-eqz v9, :cond_550

    .line 382
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v19, v19, v1

    .line 384
    :cond_550
    const/4 v1, 0x4

    .line 385
    .local v1, "strength":I
    if-eqz v20, :cond_557

    .line 386
    const/4 v1, 0x6

    move/from16 v31, v1

    goto :goto_559

    .line 385
    :cond_557
    move/from16 v31, v1

    .line 388
    .end local v1    # "strength":I
    .local v31, "strength":I
    :goto_559
    if-eqz v5, :cond_582

    if-eqz v4, :cond_582

    if-eqz v29, :cond_582

    if-eqz v28, :cond_582

    .line 389
    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object/from16 v34, v4

    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v34, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, v19

    move-object/from16 v36, v5

    .end local v5    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v36, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v5, v32

    move-object/from16 v32, v6

    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v32, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v29

    move-object/from16 v37, v7

    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v37, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v28

    move-object/from16 v38, v8

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v38, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v8, v0

    move-object/from16 v39, v9

    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v39, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_58e

    .line 388
    .end local v32    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v34    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v36    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v37    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v5    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_582
    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 394
    .end local v0    # "nextMargin":I
    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "beginMargin":I
    .end local v24    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v28    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "strength":I
    .restart local v37    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_58e
    move-object/from16 v19, v37

    goto :goto_597

    .line 352
    .end local v37    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_591
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 394
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v19, v1

    .end local v1    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v19, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_597
    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5a3

    .line 395
    move-object/from16 v0, v38

    move-object v9, v0

    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_5a5

    .line 394
    .end local v0    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5a3
    move-object/from16 v9, v39

    .line 397
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_5a5
    move-object/from16 v8, v19

    const/16 v0, 0x8

    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto/16 :goto_4ba

    .line 399
    :cond_5ab
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 400
    .local v0, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 401
    .local v9, "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v8, v1, v2

    .line 402
    .local v8, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 403
    .local v7, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v9, :cond_614

    .line 404
    if-eq v14, v15, :cond_5de

    .line 405
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    const/4 v6, 0x5

    invoke-virtual {v10, v1, v2, v3, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v24, v9

    goto :goto_61a

    .line 406
    :cond_5de
    const/4 v6, 0x5

    if-eqz v7, :cond_60d

    .line 407
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 408
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    const/16 v28, 0x5

    .line 407
    move-object/from16 v29, v1

    move-object/from16 v1, p1

    move-object/from16 v24, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v6, v29

    move-object/from16 v42, v7

    .end local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v42, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v24

    move-object/from16 v43, v8

    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v43, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v8, v27

    move-object/from16 v24, v9

    .end local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v24, "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_61a

    .line 406
    .end local v24    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_60d
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v24, v9

    .end local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v24    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_61a

    .line 403
    .end local v24    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_614
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v24, v9

    .line 411
    .end local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v24    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_61a
    move-object/from16 v1, v42

    .end local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_630

    if-eq v14, v15, :cond_630

    .line 412
    move-object/from16 v2, v43

    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v2, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x5

    invoke-virtual {v10, v3, v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_632

    .line 411
    .end local v2    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_630
    move-object/from16 v2, v43

    .line 418
    .end local v0    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v20    # "applyFixedEquality":Z
    .end local v24    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_632
    move-object/from16 v31, v38

    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v31, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_634
    :goto_634
    if-nez v22, :cond_638

    if-eqz v16, :cond_6b5

    :cond_638
    if-eqz v14, :cond_6b5

    .line 419
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 420
    .restart local v0    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 421
    .local v1, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_64d

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_64e

    :cond_64d
    const/4 v2, 0x0

    :goto_64e
    move-object/from16 v20, v2

    .line 422
    .local v20, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_659

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_65a

    :cond_659
    const/4 v2, 0x0

    .line 423
    .local v2, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_65a
    if-eq v13, v15, :cond_670

    .line 424
    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 425
    .local v3, "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_66b

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_66c

    :cond_66b
    const/4 v4, 0x0

    :goto_66c
    move-object v2, v4

    move-object/from16 v24, v2

    goto :goto_672

    .line 423
    .end local v3    # "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_670
    move-object/from16 v24, v2

    .line 427
    .end local v2    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v24, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_672
    if-ne v14, v15, :cond_680

    .line 428
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v2, p3

    .line 429
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v2, v3

    move-object v9, v1

    goto :goto_681

    .line 427
    :cond_680
    move-object v9, v1

    .line 431
    .end local v1    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v9, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_681
    if-eqz v20, :cond_6b3

    if-eqz v24, :cond_6b3

    .line 432
    const/high16 v26, 0x3f000000    # 0.5f

    .line 433
    .restart local v26    # "bias":F
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 434
    .local v27, "beginMargin":I
    if-nez v15, :cond_68f

    .line 436
    move-object v1, v13

    move-object v15, v1

    .line 438
    :cond_68f
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v28

    .line 439
    .local v28, "endMargin":I
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v29, 0x5

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v6, v24

    move/from16 v8, v28

    move-object/from16 v32, v9

    .end local v9    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v32, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v9, v29

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6b5

    .line 431
    .end local v26    # "bias":F
    .end local v27    # "beginMargin":I
    .end local v28    # "endMargin":I
    .end local v32    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_6b3
    move-object/from16 v32, v9

    .line 443
    .end local v0    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v20    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v24    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_6b5
    :goto_6b5
    return-void
.end method
