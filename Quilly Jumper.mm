<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1566756216575" ID="ID_629424246" MODIFIED="1566756236734" TEXT="Quilly Jumper">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1566756247602" ID="ID_1285952926" MODIFIED="1566756911183" POSITION="right" TEXT="ToDo">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1566756275724" FOLDED="true" ID="ID_1120160653" MODIFIED="1566837819346" TEXT="create KeyBoardController">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#990000" CREATED="1566756293584" ID="ID_1591613942" MODIFIED="1566756298585" TEXT="Inputmultiplexer needed">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566756299068" ID="ID_895853694" MODIFIED="1566756300161" TEXT="Stage"/>
<node COLOR="#111111" CREATED="1566756301093" ID="ID_1487040556" MODIFIED="1566756304281" TEXT="KeyboardController"/>
</node>
<node COLOR="#990000" CREATED="1566757233265" ID="ID_587790964" MODIFIED="1566757238375" TEXT="remove test stuff from GameScreen">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1566756331927" FOLDED="true" ID="ID_1239642524" MODIFIED="1566843968223" TEXT="add entity jump logic">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#990000" CREATED="1566757280300" ID="ID_838820531" MODIFIED="1566757287334" TEXT="JumpComponent">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566757288310" ID="ID_878434856" MODIFIED="1566757291857" TEXT="JumpDirection">
<node COLOR="#111111" CREATED="1566757292360" ID="ID_244614978" MODIFIED="1566757295657" TEXT="JUMP"/>
<node COLOR="#111111" CREATED="1566757296983" ID="ID_955989534" MODIFIED="1566757298139" TEXT="FALL"/>
<node COLOR="#111111" CREATED="1566757299193" ID="ID_1967316789" MODIFIED="1566757300333" TEXT="STOP"/>
</node>
</node>
<node COLOR="#990000" CREATED="1566756375077" ID="ID_31186968" MODIFIED="1566757317978" TEXT="JumpSystem similar to moveSystem">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1566756767831" ID="ID_880607672" MODIFIED="1566843974754" TEXT="add PlayerComponent">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566756773026" ID="ID_1813433416" MODIFIED="1566756776104" TEXT="add it to player entity">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1566756719166" FOLDED="true" ID="ID_1588828756" MODIFIED="1566846142896" TEXT="add EntityTypeComponent">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566756729593" ID="ID_1661171165" MODIFIED="1566756748157" TEXT="create floor and water as an entity">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1566757144563" ID="ID_1083915927" MODIFIED="1566757145579" TEXT="types">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566757154980" ID="ID_1635665824" MODIFIED="1566757156823" TEXT="player"/>
<node COLOR="#111111" CREATED="1566757157992" ID="ID_1098382857" MODIFIED="1566757158899" TEXT="enemy"/>
<node COLOR="#111111" CREATED="1566757161360" ID="ID_1084119785" MODIFIED="1566757163988" TEXT="scenery"/>
<node COLOR="#111111" CREATED="1566757172428" ID="ID_1199758273" MODIFIED="1566757174051" TEXT="item"/>
<node COLOR="#111111" CREATED="1566757165930" ID="ID_1411618001" MODIFIED="1566757169555" TEXT="other"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1566757357801" FOLDED="true" ID="ID_1678291687" MODIFIED="1566846143848" TEXT="add collision logic">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566756777509" ID="ID_894238715" MODIFIED="1566757365664" TEXT="add CollisionComponent">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566756782955" ID="ID_835230966" MODIFIED="1566757365664" TEXT="stores list of entities">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1566756851133" ID="ID_888044930" MODIFIED="1566757365664" TEXT="adjust beginContact/endContact in ContactListener to add/remove entities from this list for the player entity">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1566756796152" ID="ID_1705175012" MODIFIED="1566757365680" TEXT="add PlayerCollisionSystem">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566756809478" ID="ID_1225973656" MODIFIED="1566757365680" TEXT="log messages when colliding with a specific entity type">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1566757369356" FOLDED="true" ID="ID_140819722" MODIFIED="1566837934982" TEXT="add animation logic">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566757591240" ID="ID_1571591329" MODIFIED="1566757706431" TEXT="add AnimationCfgs">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566757596859" ID="ID_922723291" MODIFIED="1566757718100" TEXT="create simple DSL to describe an animation"/>
<node COLOR="#111111" CREATED="1566758329232" ID="ID_465879660" MODIFIED="1566758341734" TEXT="custom Animation class needed that contains model and animationType information"/>
</node>
<node COLOR="#990000" CREATED="1566756912373" ID="ID_1859438504" MODIFIED="1566757376573" TEXT="add AnimationComponent">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566756918990" ID="ID_1330604124" MODIFIED="1566757376573" TEXT="Animation&lt;TextureRegion&gt;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1566756940977" ID="ID_1525579307" MODIFIED="1566757376573" TEXT="animationTime">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1566757479207" ID="ID_184920335" MODIFIED="1566757484692" TEXT="model : ModelType">
<node COLOR="#111111" CREATED="1566757485585" ID="ID_975756398" MODIFIED="1566757488276" TEXT="ModelTypes">
<node COLOR="#111111" CREATED="1566757488701" ID="ID_945401275" MODIFIED="1566757491174" TEXT="PLAYER"/>
</node>
</node>
<node COLOR="#111111" CREATED="1566757501659" ID="ID_1434149497" MODIFIED="1566757513644" TEXT="animationType:AnimationType">
<node COLOR="#111111" CREATED="1566757514622" ID="ID_365282279" MODIFIED="1566757947413" TEXT="AnimationTypes">
<node COLOR="#111111" CREATED="1566757518204" ID="ID_370695849" MODIFIED="1566757519376" TEXT="IDLE"/>
<node COLOR="#111111" CREATED="1566757520391" ID="ID_1968036005" MODIFIED="1566757521642" TEXT="WALK"/>
<node COLOR="#111111" CREATED="1566757948981" ID="ID_822067674" MODIFIED="1566757950044" TEXT="JUMP"/>
<node COLOR="#111111" CREATED="1566757951287" ID="ID_1956030429" MODIFIED="1566757952303" TEXT="FALL"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1566756944754" ID="ID_1241458087" MODIFIED="1566757376589" TEXT="add AnimationSystem">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566756950536" ID="ID_1354249477" MODIFIED="1566757376589" TEXT="updates animation">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1566758365965" ID="ID_1990580397" MODIFIED="1566758386545" TEXT="checks if animation.model and animation.type are equal to the component. If not it retrieves the new animation"/>
</node>
<node COLOR="#111111" CREATED="1566757003929" ID="ID_1046481348" MODIFIED="1566757376589" TEXT="updates the sprite of the RenderComponent">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1566757575094" ID="ID_1104290609" MODIFIED="1566757588861" TEXT="sets error image in case model/animationType are not part of AnimationCache"/>
</node>
<node COLOR="#111111" CREATED="1566757632665" ID="ID_1208610979" MODIFIED="1566757730216" TEXT="parameter is AnimationCfgs"/>
<node COLOR="#111111" CREATED="1566757733751" ID="ID_1644381456" MODIFIED="1566757739299" TEXT="contains an animationCache">
<node COLOR="#111111" CREATED="1566757739967" ID="ID_489182471" MODIFIED="1566757752312" TEXT="if cache does not contain model/animation then it gets loaded via animationCfg"/>
</node>
</node>
<node COLOR="#990000" CREATED="1566757387593" ID="ID_1977994125" MODIFIED="1566757836544" TEXT="pack idle and walk animation of player">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566757400186" ID="ID_78883975" MODIFIED="1566757836544" TEXT="TextureAtlasAsset">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1566757406548" ID="ID_942027535" MODIFIED="1566757410579" TEXT="add to LoadingScreen"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1566757847427" FOLDED="true" ID="ID_913038838" MODIFIED="1566837937758" TEXT="add state logic">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566757850474" ID="ID_610321452" MODIFIED="1566757854053" TEXT="add StateComponent">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566757922383" ID="ID_1788406565" MODIFIED="1566757923774" TEXT="state">
<node COLOR="#111111" CREATED="1566757924602" ID="ID_809682809" MODIFIED="1566757925712" TEXT="States">
<node COLOR="#111111" CREATED="1566757926601" ID="ID_1611989844" MODIFIED="1566757930392" TEXT="IDLE"/>
<node COLOR="#111111" CREATED="1566757931340" ID="ID_325951445" MODIFIED="1566757932505" TEXT="WALK"/>
<node COLOR="#111111" CREATED="1566757939760" ID="ID_411289816" MODIFIED="1566757940854" TEXT="JUMP"/>
<node COLOR="#111111" CREATED="1566757943491" ID="ID_1025667458" MODIFIED="1566757944553" TEXT="FALL"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1566757868491" ID="ID_1858494542" MODIFIED="1566757871397" TEXT="add StateSystem">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1566757873237" ID="ID_1016056919" MODIFIED="1566758897524" TEXT="checks">
<node COLOR="#111111" CREATED="1566758898741" ID="ID_1523674604" MODIFIED="1566758917771" TEXT="move.speed == 0 &amp;&amp; jump.speed == 0 --&gt; IDLE"/>
<node COLOR="#111111" CREATED="1566758919899" ID="ID_884025824" MODIFIED="1566758925087" TEXT="move.speed != 0 --&gt; WALK"/>
<node COLOR="#111111" CREATED="1566758927261" ID="ID_1026117406" MODIFIED="1566758944041" TEXT="jump.speed &gt; 0 --&gt; JUMP"/>
<node COLOR="#111111" CREATED="1566758945262" ID="ID_1601916990" MODIFIED="1566758950888" TEXT="jump.speed &lt; 0 --&gt; FALL"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1566759034211" FOLDED="true" ID="ID_381483062" MODIFIED="1566837939764" TEXT="add sound for jump">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566759043501" ID="ID_1322492472" MODIFIED="1566759047329" TEXT="play sound when jump">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1566846092724" ID="ID_1150117663" MODIFIED="1566846135196" TEXT="add DSL for gameObjects">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1566846100447" ID="ID_1838114735" MODIFIED="1566846128581" TEXT="to descriibe width/height/modelType/moveSpeed/jumpSpeed/entityType/...">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
