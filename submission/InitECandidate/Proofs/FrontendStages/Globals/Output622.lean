import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data622
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody622_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody622_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody622_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]))
  (Flapjack.Exp.const 0#64)) globalBody622_0 globalBody622_1

def globalBody622_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody622_4 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) globalBody622_3

def globalBody622_5 : Prog (BitVec 64) :=
.seq globalBody622_2 globalBody622_4

def globalBody622_6 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody622_7 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody622_6

def globalBody622_8 : Prog (BitVec 64) :=
.seq globalBody622_5 globalBody622_7

def globalBody622_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody622_10 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody622_9

def globalBody622_11 : Prog (BitVec 64) :=
.seq globalBody622_8 globalBody622_10

def globalBody622_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 18364758544493064720#64)

def globalBody622_13 : Prog (BitVec 64) :=
.seq globalBody622_11 globalBody622_12

def globalBody622_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 3853709921291437230#64)

def globalBody622_15 : Prog (BitVec 64) :=
.seq globalBody622_13 globalBody622_14

def globalBody622_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 5266788149650328715#64)

def globalBody622_17 : Prog (BitVec 64) :=
.seq globalBody622_15 globalBody622_16

def globalBody622_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 10305543691612001175#64)

def globalBody622_19 : Prog (BitVec 64) :=
.seq globalBody622_17 globalBody622_18

def globalBody622_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 15242093322790139145#64)

def globalBody622_21 : Prog (BitVec 64) :=
.seq globalBody622_19 globalBody622_20

def globalBody622_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 10515720223929181890#64)

def globalBody622_23 : Prog (BitVec 64) :=
.seq globalBody622_21 globalBody622_22

def globalBody622_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 13270197634454188380#64)

def globalBody622_25 : Prog (BitVec 64) :=
.seq globalBody622_23 globalBody622_24

def globalBody622_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 11702690517083809725#64)

def globalBody622_27 : Prog (BitVec 64) :=
.seq globalBody622_25 globalBody622_26

def globalBody622_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 6503616966983130870#64)

def globalBody622_29 : Prog (BitVec 64) :=
.seq globalBody622_27 globalBody622_28

def globalBody622_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 352#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 991893350865389610#64)

def globalBody622_31 : Prog (BitVec 64) :=
.seq globalBody622_29 globalBody622_30

def globalBody622_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 7640891576956012808#64)

def globalBody622_33 : Prog (BitVec 64) :=
.seq globalBody622_31 globalBody622_32

def globalBody622_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 13503953896175478587#64)

def globalBody622_35 : Prog (BitVec 64) :=
.seq globalBody622_33 globalBody622_34

def globalBody622_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 4354685564936845355#64)

def globalBody622_37 : Prog (BitVec 64) :=
.seq globalBody622_35 globalBody622_36

def globalBody622_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 11912009170470909681#64)

def globalBody622_39 : Prog (BitVec 64) :=
.seq globalBody622_37 globalBody622_38

def globalBody622_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 5840696475078001361#64)

def globalBody622_41 : Prog (BitVec 64) :=
.seq globalBody622_39 globalBody622_40

def globalBody622_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 11170449401992604703#64)

def globalBody622_43 : Prog (BitVec 64) :=
.seq globalBody622_41 globalBody622_42

def globalBody622_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 2270897969802886507#64)

def globalBody622_45 : Prog (BitVec 64) :=
.seq globalBody622_43 globalBody622_44

def globalBody622_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 360#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 6620516959819538809#64)

def globalBody622_47 : Prog (BitVec 64) :=
.seq globalBody622_45 globalBody622_46

def globalBody622_48 : Prog (BitVec 64) :=
.seq globalBody622_47 globalBody622_0

def globalData622 : Decl (BitVec 64) :=
.function { name := "blake2_init", inline := false, exported := false, params := [], body := globalBody622_48, returnShape := (Flapjack.Shape.one) }
def globalOutput622 := Pancake.PanLang.declToHOL globalData622
end InitECandidate.Proofs.FrontendStages.Declarations
