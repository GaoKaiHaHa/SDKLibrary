.class public Lcom/iab/omid/library/mintegral/adsession/Partner;
.super Ljava/lang/Object;


# instance fields
.field private final name:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/Partner;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/adsession/Partner;->version:Ljava/lang/String;

    return-void
.end method

.method public static createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/Partner;
    .registers 3

    const-string v0, "Name is null or empty"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version is null or empty"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/Partner;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/mintegral/adsession/Partner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/Partner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/Partner;->version:Ljava/lang/String;

    return-object v0
.end method