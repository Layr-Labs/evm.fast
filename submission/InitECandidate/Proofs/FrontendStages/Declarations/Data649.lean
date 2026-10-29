import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify633
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body649_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body649_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body649_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma") (Flapjack.Exp.const 0#64)) body649_0 body649_1

def body649_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bn_gamma"), none)) "alloc"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.const 64#64]]

def body649_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def body649_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body649_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 12653890742059813127#64, Flapjack.Exp.const 14585784200204367754#64,
      Flapjack.Exp.const 1278438861261381767#64, Flapjack.Exp.const 212598772761311868#64])

def body649_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 11683091849979440498#64, Flapjack.Exp.const 14992204589386555739#64,
      Flapjack.Exp.const 15866167890766973222#64, Flapjack.Exp.const 1200023580730561873#64])

def body649_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13075984984163199792#64, Flapjack.Exp.const 3782902503040509012#64,
      Flapjack.Exp.const 8791150885551868305#64, Flapjack.Exp.const 1825854335138010348#64])

def body649_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 7963664994991228759#64, Flapjack.Exp.const 12257807996192067905#64,
      Flapjack.Exp.const 13179524609921305146#64, Flapjack.Exp.const 2767831111890561987#64])

def body649_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 16482010305593259561#64, Flapjack.Exp.const 13488546290961988299#64,
      Flapjack.Exp.const 3578621962720924518#64, Flapjack.Exp.const 2681173117283399901#64])

def body649_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 11661927080404088775#64, Flapjack.Exp.const 553939530661941723#64,
      Flapjack.Exp.const 7860678177968807019#64, Flapjack.Exp.const 3208568454732775116#64])

def body649_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 256#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8314163329781907090#64, Flapjack.Exp.const 11942187022798819835#64,
      Flapjack.Exp.const 11282677263046157209#64, Flapjack.Exp.const 1576150870752482284#64])

def body649_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 288#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 6763840483288992073#64, Flapjack.Exp.const 7118829427391486816#64,
      Flapjack.Exp.const 4016233444936635065#64, Flapjack.Exp.const 2630958277570195709#64])

def body649_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 320#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 14515217250696892391#64, Flapjack.Exp.const 16303087968080972555#64,
      Flapjack.Exp.const 3656613296917993960#64, Flapjack.Exp.const 1345095164996126785#64])

def body649_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma", Flapjack.Exp.const 352#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 957117326806663081#64, Flapjack.Exp.const 367382125163301975#64,
      Flapjack.Exp.const 15253872307375509749#64, Flapjack.Exp.const 3396254757538665050#64])

def body649_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bn_expw"), none)) "alloc"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 44#64, Flapjack.Exp.const 8#64]]

def body649_17 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.global "bn_expw") (Flapjack.Exp.const 9698021743855595808#64)

def body649_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 4658111487712502692#64)

def body649_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 9475478476403788475#64)

def body649_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 3895898136474990872#64)

def body649_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 13897688294677189338#64)

def body649_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 13692288569157338976#64)

def body649_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 15521367811043670911#64)

def body649_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 13992850401411864641#64)

def body649_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 6609620042336070051#64)

def body649_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 9167096575297741460#64)

def body649_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 3006977925533509404#64)

def body649_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 13799376210358020352#64)

def body649_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 7213564696215919148#64)

def body649_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 12108970941387295838#64)

def body649_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 14800348210198864764#64)

def body649_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 5333217130945090002#64)

def body649_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 17191330154042290397#64)

def body649_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 7728981312468502308#64)

def body649_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 13479501571575199621#64)

def body649_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 4632319730382815766#64)

def body649_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 6183408236485651195#64)

def body649_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 2344383644319854215#64)

def body649_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.const 9541507823907846048#64)

def body649_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 5234407941292577173#64)

def body649_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.const 16529975799043132950#64)

def body649_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.const 12351756573642376427#64)

def body649_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.const 9426269327694809050#64)

def body649_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.const 7379223421642392714#64)

def body649_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.const 5792417538046516732#64)

def body649_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 9162926010144764881#64)

def body649_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.const 8644015420738790472#64)

def body649_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 248#64])
  (Flapjack.Exp.const 18370314904686314414#64)

def body649_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 256#64])
  (Flapjack.Exp.const 17975984934167627464#64)

def body649_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 264#64])
  (Flapjack.Exp.const 8719923968173632426#64)

def body649_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 272#64])
  (Flapjack.Exp.const 6379321585415610019#64)

def body649_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 280#64])
  (Flapjack.Exp.const 1402842025008175984#64)

def body649_53 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 288#64])
  (Flapjack.Exp.const 888598832447275954#64)

def body649_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 296#64])
  (Flapjack.Exp.const 4522688638863333623#64)

def body649_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 304#64])
  (Flapjack.Exp.const 15776483769708984925#64)

def body649_56 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 312#64])
  (Flapjack.Exp.const 16276864970431725248#64)

def body649_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 320#64])
  (Flapjack.Exp.const 7646110518075161570#64)

def body649_58 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 328#64])
  (Flapjack.Exp.const 9524343276244152831#64)

def body649_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 336#64])
  (Flapjack.Exp.const 2377296829910687932#64)

def body649_60 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 344#64])
  (Flapjack.Exp.const 203128949104#64)

def body649_61 : Prog (BitVec 64) :=
.seq body649_60 body649_0

def body649_62 : Prog (BitVec 64) :=
.seq body649_59 body649_61

def body649_63 : Prog (BitVec 64) :=
.seq body649_58 body649_62

def body649_64 : Prog (BitVec 64) :=
.seq body649_57 body649_63

def body649_65 : Prog (BitVec 64) :=
.seq body649_56 body649_64

def body649_66 : Prog (BitVec 64) :=
.seq body649_55 body649_65

def body649_67 : Prog (BitVec 64) :=
.seq body649_54 body649_66

def body649_68 : Prog (BitVec 64) :=
.seq body649_53 body649_67

def body649_69 : Prog (BitVec 64) :=
.seq body649_52 body649_68

def body649_70 : Prog (BitVec 64) :=
.seq body649_51 body649_69

def body649_71 : Prog (BitVec 64) :=
.seq body649_50 body649_70

def body649_72 : Prog (BitVec 64) :=
.seq body649_49 body649_71

def body649_73 : Prog (BitVec 64) :=
.seq body649_48 body649_72

def body649_74 : Prog (BitVec 64) :=
.seq body649_47 body649_73

def body649_75 : Prog (BitVec 64) :=
.seq body649_46 body649_74

def body649_76 : Prog (BitVec 64) :=
.seq body649_45 body649_75

def body649_77 : Prog (BitVec 64) :=
.seq body649_44 body649_76

def body649_78 : Prog (BitVec 64) :=
.seq body649_43 body649_77

def body649_79 : Prog (BitVec 64) :=
.seq body649_42 body649_78

def body649_80 : Prog (BitVec 64) :=
.seq body649_41 body649_79

def body649_81 : Prog (BitVec 64) :=
.seq body649_40 body649_80

def body649_82 : Prog (BitVec 64) :=
.seq body649_39 body649_81

def body649_83 : Prog (BitVec 64) :=
.seq body649_38 body649_82

def body649_84 : Prog (BitVec 64) :=
.seq body649_37 body649_83

def body649_85 : Prog (BitVec 64) :=
.seq body649_36 body649_84

def body649_86 : Prog (BitVec 64) :=
.seq body649_35 body649_85

def body649_87 : Prog (BitVec 64) :=
.seq body649_34 body649_86

def body649_88 : Prog (BitVec 64) :=
.seq body649_33 body649_87

def body649_89 : Prog (BitVec 64) :=
.seq body649_32 body649_88

def body649_90 : Prog (BitVec 64) :=
.seq body649_31 body649_89

def body649_91 : Prog (BitVec 64) :=
.seq body649_30 body649_90

def body649_92 : Prog (BitVec 64) :=
.seq body649_29 body649_91

def body649_93 : Prog (BitVec 64) :=
.seq body649_28 body649_92

def body649_94 : Prog (BitVec 64) :=
.seq body649_27 body649_93

def body649_95 : Prog (BitVec 64) :=
.seq body649_26 body649_94

def body649_96 : Prog (BitVec 64) :=
.seq body649_25 body649_95

def body649_97 : Prog (BitVec 64) :=
.seq body649_24 body649_96

def body649_98 : Prog (BitVec 64) :=
.seq body649_23 body649_97

def body649_99 : Prog (BitVec 64) :=
.seq body649_22 body649_98

def body649_100 : Prog (BitVec 64) :=
.seq body649_21 body649_99

def body649_101 : Prog (BitVec 64) :=
.seq body649_20 body649_100

def body649_102 : Prog (BitVec 64) :=
.seq body649_19 body649_101

def body649_103 : Prog (BitVec 64) :=
.seq body649_18 body649_102

def body649_104 : Prog (BitVec 64) :=
.seq body649_17 body649_103

def body649_105 : Prog (BitVec 64) :=
.seq body649_16 body649_104

def body649_106 : Prog (BitVec 64) :=
.seq body649_15 body649_105

def body649_107 : Prog (BitVec 64) :=
.seq body649_14 body649_106

def body649_108 : Prog (BitVec 64) :=
.seq body649_13 body649_107

def body649_109 : Prog (BitVec 64) :=
.seq body649_12 body649_108

def body649_110 : Prog (BitVec 64) :=
.seq body649_11 body649_109

def body649_111 : Prog (BitVec 64) :=
.seq body649_10 body649_110

def body649_112 : Prog (BitVec 64) :=
.seq body649_9 body649_111

def body649_113 : Prog (BitVec 64) :=
.seq body649_8 body649_112

def body649_114 : Prog (BitVec 64) :=
.seq body649_7 body649_113

def body649_115 : Prog (BitVec 64) :=
.seq body649_6 body649_114

def body649_116 : Prog (BitVec 64) :=
.seq body649_5 body649_115

def body649_117 : Prog (BitVec 64) :=
.seq body649_4 body649_116

def body649_118 : Prog (BitVec 64) :=
.seq body649_3 body649_117

def body649_119 : Prog (BitVec 64) :=
.seq body649_2 body649_118

def body649_120 : Prog (BitVec 64) :=
.seq body649_2 body649_3

def body649_121 : Prog (BitVec 64) :=
.seq body649_120 body649_4

def body649_122 : Prog (BitVec 64) :=
.seq body649_121 body649_5

def body649_123 : Prog (BitVec 64) :=
.seq body649_122 body649_6

def body649_124 : Prog (BitVec 64) :=
.seq body649_123 body649_7

def body649_125 : Prog (BitVec 64) :=
.seq body649_124 body649_8

def body649_126 : Prog (BitVec 64) :=
.seq body649_125 body649_9

def body649_127 : Prog (BitVec 64) :=
.seq body649_126 body649_10

def body649_128 : Prog (BitVec 64) :=
.seq body649_127 body649_11

def body649_129 : Prog (BitVec 64) :=
.seq body649_128 body649_12

def body649_130 : Prog (BitVec 64) :=
.seq body649_129 body649_13

def body649_131 : Prog (BitVec 64) :=
.seq body649_130 body649_14

def body649_132 : Prog (BitVec 64) :=
.seq body649_131 body649_15

def body649_133 : Prog (BitVec 64) :=
.seq body649_132 body649_16

def body649_134 : Prog (BitVec 64) :=
.seq body649_133 body649_17

def body649_135 : Prog (BitVec 64) :=
.seq body649_134 body649_18

def body649_136 : Prog (BitVec 64) :=
.seq body649_135 body649_19

def body649_137 : Prog (BitVec 64) :=
.seq body649_136 body649_20

def body649_138 : Prog (BitVec 64) :=
.seq body649_137 body649_21

def body649_139 : Prog (BitVec 64) :=
.seq body649_138 body649_22

def body649_140 : Prog (BitVec 64) :=
.seq body649_139 body649_23

def body649_141 : Prog (BitVec 64) :=
.seq body649_140 body649_24

def body649_142 : Prog (BitVec 64) :=
.seq body649_141 body649_25

def body649_143 : Prog (BitVec 64) :=
.seq body649_142 body649_26

def body649_144 : Prog (BitVec 64) :=
.seq body649_143 body649_27

def body649_145 : Prog (BitVec 64) :=
.seq body649_144 body649_28

def body649_146 : Prog (BitVec 64) :=
.seq body649_145 body649_29

def body649_147 : Prog (BitVec 64) :=
.seq body649_146 body649_30

def body649_148 : Prog (BitVec 64) :=
.seq body649_147 body649_31

def body649_149 : Prog (BitVec 64) :=
.seq body649_148 body649_32

def body649_150 : Prog (BitVec 64) :=
.seq body649_149 body649_33

def body649_151 : Prog (BitVec 64) :=
.seq body649_150 body649_34

def body649_152 : Prog (BitVec 64) :=
.seq body649_151 body649_35

def body649_153 : Prog (BitVec 64) :=
.seq body649_152 body649_36

def body649_154 : Prog (BitVec 64) :=
.seq body649_153 body649_37

def body649_155 : Prog (BitVec 64) :=
.seq body649_154 body649_38

def body649_156 : Prog (BitVec 64) :=
.seq body649_155 body649_39

def body649_157 : Prog (BitVec 64) :=
.seq body649_156 body649_40

def body649_158 : Prog (BitVec 64) :=
.seq body649_157 body649_41

def body649_159 : Prog (BitVec 64) :=
.seq body649_158 body649_42

def body649_160 : Prog (BitVec 64) :=
.seq body649_159 body649_43

def body649_161 : Prog (BitVec 64) :=
.seq body649_160 body649_44

def body649_162 : Prog (BitVec 64) :=
.seq body649_161 body649_45

def body649_163 : Prog (BitVec 64) :=
.seq body649_162 body649_46

def body649_164 : Prog (BitVec 64) :=
.seq body649_163 body649_47

def body649_165 : Prog (BitVec 64) :=
.seq body649_164 body649_48

def body649_166 : Prog (BitVec 64) :=
.seq body649_165 body649_49

def body649_167 : Prog (BitVec 64) :=
.seq body649_166 body649_50

def body649_168 : Prog (BitVec 64) :=
.seq body649_167 body649_51

def body649_169 : Prog (BitVec 64) :=
.seq body649_168 body649_52

def body649_170 : Prog (BitVec 64) :=
.seq body649_169 body649_53

def body649_171 : Prog (BitVec 64) :=
.seq body649_170 body649_54

def body649_172 : Prog (BitVec 64) :=
.seq body649_171 body649_55

def body649_173 : Prog (BitVec 64) :=
.seq body649_172 body649_56

def body649_174 : Prog (BitVec 64) :=
.seq body649_173 body649_57

def body649_175 : Prog (BitVec 64) :=
.seq body649_174 body649_58

def body649_176 : Prog (BitVec 64) :=
.seq body649_175 body649_59

def body649_177 : Prog (BitVec 64) :=
.seq body649_176 body649_60

def body649_178 : Prog (BitVec 64) :=
.seq body649_177 body649_0

def originalData649 : Decl (BitVec 64) :=
.function { name := "bn254_init", inline := false, exported := false, params := [], body := body649_119, returnShape := (Flapjack.Shape.one) }
def simplifiedData649 : Decl (BitVec 64) :=
.function { name := "bn254_init", inline := false, exported := false, params := [], body := body649_178, returnShape := (Flapjack.Shape.one) }
def original649 := Pancake.PanLang.declToHOL originalData649
def simplified649 := Pancake.PanLang.declToHOL simplifiedData649
end InitECandidate.Proofs.FrontendStages.Declarations
