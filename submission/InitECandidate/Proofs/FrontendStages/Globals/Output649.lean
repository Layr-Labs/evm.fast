import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data649
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody649_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody649_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody649_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]))
  (Flapjack.Exp.const 0#64)) globalBody649_0 globalBody649_1

def globalBody649_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody649_4 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.const 64#64]]) globalBody649_3

def globalBody649_5 : Prog (BitVec 64) :=
.seq globalBody649_2 globalBody649_4

def globalBody649_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]))
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def globalBody649_7 : Prog (BitVec 64) :=
.seq globalBody649_5 globalBody649_6

def globalBody649_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody649_9 : Prog (BitVec 64) :=
.seq globalBody649_7 globalBody649_8

def globalBody649_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 12653890742059813127#64, Flapjack.Exp.const 14585784200204367754#64,
      Flapjack.Exp.const 1278438861261381767#64, Flapjack.Exp.const 212598772761311868#64])

def globalBody649_11 : Prog (BitVec 64) :=
.seq globalBody649_9 globalBody649_10

def globalBody649_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 11683091849979440498#64, Flapjack.Exp.const 14992204589386555739#64,
      Flapjack.Exp.const 15866167890766973222#64, Flapjack.Exp.const 1200023580730561873#64])

def globalBody649_13 : Prog (BitVec 64) :=
.seq globalBody649_11 globalBody649_12

def globalBody649_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13075984984163199792#64, Flapjack.Exp.const 3782902503040509012#64,
      Flapjack.Exp.const 8791150885551868305#64, Flapjack.Exp.const 1825854335138010348#64])

def globalBody649_15 : Prog (BitVec 64) :=
.seq globalBody649_13 globalBody649_14

def globalBody649_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 160#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 7963664994991228759#64, Flapjack.Exp.const 12257807996192067905#64,
      Flapjack.Exp.const 13179524609921305146#64, Flapjack.Exp.const 2767831111890561987#64])

def globalBody649_17 : Prog (BitVec 64) :=
.seq globalBody649_15 globalBody649_16

def globalBody649_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 16482010305593259561#64, Flapjack.Exp.const 13488546290961988299#64,
      Flapjack.Exp.const 3578621962720924518#64, Flapjack.Exp.const 2681173117283399901#64])

def globalBody649_19 : Prog (BitVec 64) :=
.seq globalBody649_17 globalBody649_18

def globalBody649_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 224#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 11661927080404088775#64, Flapjack.Exp.const 553939530661941723#64,
      Flapjack.Exp.const 7860678177968807019#64, Flapjack.Exp.const 3208568454732775116#64])

def globalBody649_21 : Prog (BitVec 64) :=
.seq globalBody649_19 globalBody649_20

def globalBody649_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 256#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8314163329781907090#64, Flapjack.Exp.const 11942187022798819835#64,
      Flapjack.Exp.const 11282677263046157209#64, Flapjack.Exp.const 1576150870752482284#64])

def globalBody649_23 : Prog (BitVec 64) :=
.seq globalBody649_21 globalBody649_22

def globalBody649_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 288#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 6763840483288992073#64, Flapjack.Exp.const 7118829427391486816#64,
      Flapjack.Exp.const 4016233444936635065#64, Flapjack.Exp.const 2630958277570195709#64])

def globalBody649_25 : Prog (BitVec 64) :=
.seq globalBody649_23 globalBody649_24

def globalBody649_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 320#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 14515217250696892391#64, Flapjack.Exp.const 16303087968080972555#64,
      Flapjack.Exp.const 3656613296917993960#64, Flapjack.Exp.const 1345095164996126785#64])

def globalBody649_27 : Prog (BitVec 64) :=
.seq globalBody649_25 globalBody649_26

def globalBody649_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 376#64]),
      Flapjack.Exp.const 352#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 957117326806663081#64, Flapjack.Exp.const 367382125163301975#64,
      Flapjack.Exp.const 15253872307375509749#64, Flapjack.Exp.const 3396254757538665050#64])

def globalBody649_29 : Prog (BitVec 64) :=
.seq globalBody649_27 globalBody649_28

def globalBody649_30 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody649_31 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 44#64, Flapjack.Exp.const 8#64]]) globalBody649_30

def globalBody649_32 : Prog (BitVec 64) :=
.seq globalBody649_29 globalBody649_31

def globalBody649_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]))
  (Flapjack.Exp.const 9698021743855595808#64)

def globalBody649_34 : Prog (BitVec 64) :=
.seq globalBody649_32 globalBody649_33

def globalBody649_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 4658111487712502692#64)

def globalBody649_36 : Prog (BitVec 64) :=
.seq globalBody649_34 globalBody649_35

def globalBody649_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 9475478476403788475#64)

def globalBody649_38 : Prog (BitVec 64) :=
.seq globalBody649_36 globalBody649_37

def globalBody649_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 3895898136474990872#64)

def globalBody649_40 : Prog (BitVec 64) :=
.seq globalBody649_38 globalBody649_39

def globalBody649_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 13897688294677189338#64)

def globalBody649_42 : Prog (BitVec 64) :=
.seq globalBody649_40 globalBody649_41

def globalBody649_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 13692288569157338976#64)

def globalBody649_44 : Prog (BitVec 64) :=
.seq globalBody649_42 globalBody649_43

def globalBody649_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 15521367811043670911#64)

def globalBody649_46 : Prog (BitVec 64) :=
.seq globalBody649_44 globalBody649_45

def globalBody649_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 13992850401411864641#64)

def globalBody649_48 : Prog (BitVec 64) :=
.seq globalBody649_46 globalBody649_47

def globalBody649_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 6609620042336070051#64)

def globalBody649_50 : Prog (BitVec 64) :=
.seq globalBody649_48 globalBody649_49

def globalBody649_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 9167096575297741460#64)

def globalBody649_52 : Prog (BitVec 64) :=
.seq globalBody649_50 globalBody649_51

def globalBody649_53 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 3006977925533509404#64)

def globalBody649_54 : Prog (BitVec 64) :=
.seq globalBody649_52 globalBody649_53

def globalBody649_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 13799376210358020352#64)

def globalBody649_56 : Prog (BitVec 64) :=
.seq globalBody649_54 globalBody649_55

def globalBody649_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 7213564696215919148#64)

def globalBody649_58 : Prog (BitVec 64) :=
.seq globalBody649_56 globalBody649_57

def globalBody649_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 12108970941387295838#64)

def globalBody649_60 : Prog (BitVec 64) :=
.seq globalBody649_58 globalBody649_59

def globalBody649_61 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 14800348210198864764#64)

def globalBody649_62 : Prog (BitVec 64) :=
.seq globalBody649_60 globalBody649_61

def globalBody649_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 5333217130945090002#64)

def globalBody649_64 : Prog (BitVec 64) :=
.seq globalBody649_62 globalBody649_63

def globalBody649_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 17191330154042290397#64)

def globalBody649_66 : Prog (BitVec 64) :=
.seq globalBody649_64 globalBody649_65

def globalBody649_67 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 7728981312468502308#64)

def globalBody649_68 : Prog (BitVec 64) :=
.seq globalBody649_66 globalBody649_67

def globalBody649_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 13479501571575199621#64)

def globalBody649_70 : Prog (BitVec 64) :=
.seq globalBody649_68 globalBody649_69

def globalBody649_71 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 4632319730382815766#64)

def globalBody649_72 : Prog (BitVec 64) :=
.seq globalBody649_70 globalBody649_71

def globalBody649_73 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 6183408236485651195#64)

def globalBody649_74 : Prog (BitVec 64) :=
.seq globalBody649_72 globalBody649_73

def globalBody649_75 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 2344383644319854215#64)

def globalBody649_76 : Prog (BitVec 64) :=
.seq globalBody649_74 globalBody649_75

def globalBody649_77 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 176#64])
  (Flapjack.Exp.const 9541507823907846048#64)

def globalBody649_78 : Prog (BitVec 64) :=
.seq globalBody649_76 globalBody649_77

def globalBody649_79 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 5234407941292577173#64)

def globalBody649_80 : Prog (BitVec 64) :=
.seq globalBody649_78 globalBody649_79

def globalBody649_81 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 192#64])
  (Flapjack.Exp.const 16529975799043132950#64)

def globalBody649_82 : Prog (BitVec 64) :=
.seq globalBody649_80 globalBody649_81

def globalBody649_83 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 200#64])
  (Flapjack.Exp.const 12351756573642376427#64)

def globalBody649_84 : Prog (BitVec 64) :=
.seq globalBody649_82 globalBody649_83

def globalBody649_85 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 208#64])
  (Flapjack.Exp.const 9426269327694809050#64)

def globalBody649_86 : Prog (BitVec 64) :=
.seq globalBody649_84 globalBody649_85

def globalBody649_87 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 216#64])
  (Flapjack.Exp.const 7379223421642392714#64)

def globalBody649_88 : Prog (BitVec 64) :=
.seq globalBody649_86 globalBody649_87

def globalBody649_89 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 224#64])
  (Flapjack.Exp.const 5792417538046516732#64)

def globalBody649_90 : Prog (BitVec 64) :=
.seq globalBody649_88 globalBody649_89

def globalBody649_91 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 9162926010144764881#64)

def globalBody649_92 : Prog (BitVec 64) :=
.seq globalBody649_90 globalBody649_91

def globalBody649_93 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 240#64])
  (Flapjack.Exp.const 8644015420738790472#64)

def globalBody649_94 : Prog (BitVec 64) :=
.seq globalBody649_92 globalBody649_93

def globalBody649_95 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 248#64])
  (Flapjack.Exp.const 18370314904686314414#64)

def globalBody649_96 : Prog (BitVec 64) :=
.seq globalBody649_94 globalBody649_95

def globalBody649_97 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 256#64])
  (Flapjack.Exp.const 17975984934167627464#64)

def globalBody649_98 : Prog (BitVec 64) :=
.seq globalBody649_96 globalBody649_97

def globalBody649_99 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 264#64])
  (Flapjack.Exp.const 8719923968173632426#64)

def globalBody649_100 : Prog (BitVec 64) :=
.seq globalBody649_98 globalBody649_99

def globalBody649_101 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 272#64])
  (Flapjack.Exp.const 6379321585415610019#64)

def globalBody649_102 : Prog (BitVec 64) :=
.seq globalBody649_100 globalBody649_101

def globalBody649_103 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 280#64])
  (Flapjack.Exp.const 1402842025008175984#64)

def globalBody649_104 : Prog (BitVec 64) :=
.seq globalBody649_102 globalBody649_103

def globalBody649_105 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 288#64])
  (Flapjack.Exp.const 888598832447275954#64)

def globalBody649_106 : Prog (BitVec 64) :=
.seq globalBody649_104 globalBody649_105

def globalBody649_107 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 296#64])
  (Flapjack.Exp.const 4522688638863333623#64)

def globalBody649_108 : Prog (BitVec 64) :=
.seq globalBody649_106 globalBody649_107

def globalBody649_109 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 304#64])
  (Flapjack.Exp.const 15776483769708984925#64)

def globalBody649_110 : Prog (BitVec 64) :=
.seq globalBody649_108 globalBody649_109

def globalBody649_111 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 312#64])
  (Flapjack.Exp.const 16276864970431725248#64)

def globalBody649_112 : Prog (BitVec 64) :=
.seq globalBody649_110 globalBody649_111

def globalBody649_113 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 320#64])
  (Flapjack.Exp.const 7646110518075161570#64)

def globalBody649_114 : Prog (BitVec 64) :=
.seq globalBody649_112 globalBody649_113

def globalBody649_115 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 328#64])
  (Flapjack.Exp.const 9524343276244152831#64)

def globalBody649_116 : Prog (BitVec 64) :=
.seq globalBody649_114 globalBody649_115

def globalBody649_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 336#64])
  (Flapjack.Exp.const 2377296829910687932#64)

def globalBody649_118 : Prog (BitVec 64) :=
.seq globalBody649_116 globalBody649_117

def globalBody649_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
      Flapjack.Exp.const 344#64])
  (Flapjack.Exp.const 203128949104#64)

def globalBody649_120 : Prog (BitVec 64) :=
.seq globalBody649_118 globalBody649_119

def globalBody649_121 : Prog (BitVec 64) :=
.seq globalBody649_120 globalBody649_0

def globalData649 : Decl (BitVec 64) :=
.function { name := "bn254_init", inline := false, exported := false, params := [], body := globalBody649_121, returnShape := (Flapjack.Shape.one) }
def globalOutput649 := Pancake.PanLang.declToHOL globalData649
end InitECandidate.Proofs.FrontendStages.Declarations
