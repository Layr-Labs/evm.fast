import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data351
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody351_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody351_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody351_0

def globalBody351_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodedb")

def globalBody351_3 : Prog (BitVec 64) :=
.seq globalBody351_1 globalBody351_2

def globalBody351_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "state_root")

def globalBody351_5 : Prog (BitVec 64) :=
.seq globalBody351_3 globalBody351_4

def globalBody351_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "codedb")

def globalBody351_7 : Prog (BitVec 64) :=
.seq globalBody351_5 globalBody351_6

def globalBody351_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "root")

def globalBody351_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_10 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody351_11 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) globalBody351_10

def globalBody351_12 : Prog (BitVec 64) :=
.seq globalBody351_9 globalBody351_11

def globalBody351_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]))

def globalBody351_14 : Prog (BitVec 64) :=
.seq globalBody351_12 globalBody351_13

def globalBody351_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 256#64]

def globalBody351_16 : Prog (BitVec 64) :=
.seq globalBody351_14 globalBody351_15

def globalBody351_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_18 : Prog (BitVec 64) :=
.seq globalBody351_16 globalBody351_17

def globalBody351_19 : Prog (BitVec 64) :=
.seq globalBody351_18 globalBody351_15

def globalBody351_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_21 : Prog (BitVec 64) :=
.seq globalBody351_19 globalBody351_20

def globalBody351_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 256#64]

def globalBody351_23 : Prog (BitVec 64) :=
.seq globalBody351_21 globalBody351_22

def globalBody351_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_25 : Prog (BitVec 64) :=
.seq globalBody351_23 globalBody351_24

def globalBody351_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]

def globalBody351_27 : Prog (BitVec 64) :=
.seq globalBody351_25 globalBody351_26

def globalBody351_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_29 : Prog (BitVec 64) :=
.seq globalBody351_27 globalBody351_28

def globalBody351_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 64#64]

def globalBody351_31 : Prog (BitVec 64) :=
.seq globalBody351_29 globalBody351_30

def globalBody351_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_33 : Prog (BitVec 64) :=
.seq globalBody351_31 globalBody351_32

def globalBody351_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]

def globalBody351_35 : Prog (BitVec 64) :=
.seq globalBody351_33 globalBody351_34

def globalBody351_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_37 : Prog (BitVec 64) :=
.seq globalBody351_35 globalBody351_36

def globalBody351_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def globalBody351_39 : Prog (BitVec 64) :=
.seq globalBody351_37 globalBody351_38

def globalBody351_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 0#64)

def globalBody351_41 : Prog (BitVec 64) :=
.seq globalBody351_39 globalBody351_40

def globalBody351_42 : Prog (BitVec 64) :=
.seq globalBody351_41 globalBody351_15

def globalBody351_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody351_44 : Prog (BitVec 64) :=
.seq globalBody351_42 globalBody351_43

def globalBody351_45 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody351_46 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody351_45

def globalBody351_47 : Prog (BitVec 64) :=
.seq globalBody351_44 globalBody351_46

def globalBody351_48 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 208#64])
  (Flapjack.Exp.const 524288#64)

def globalBody351_49 : Prog (BitVec 64) :=
.seq globalBody351_47 globalBody351_48

def globalBody351_50 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 200#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody351_51 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 208#64]),
      Flapjack.Exp.const 32#64]]) globalBody351_50

def globalBody351_52 : Prog (BitVec 64) :=
.seq globalBody351_49 globalBody351_51

def globalBody351_53 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody351_54 : Prog (BitVec 64) :=
.seq globalBody351_52 globalBody351_53

def globalBody351_55 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 0#64)

def globalBody351_56 : Prog (BitVec 64) :=
.seq globalBody351_54 globalBody351_55

def globalBody351_57 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody351_58 : Prog (BitVec 64) :=
.seq globalBody351_56 globalBody351_57

def globalBody351_59 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]) globalBody351_58

def globalBody351_60 : Prog (BitVec 64) :=
.seq globalBody351_8 globalBody351_59

def globalBody351_61 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("decode_witness_to_mpt") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb", Flapjack.Exp.var Flapjack.VarKind.local "state_root"]) globalBody351_60

def globalBody351_62 : Prog (BitVec 64) :=
.seq globalBody351_7 globalBody351_61

def globalData351 : Decl (BitVec 64) :=
.function { name := "state_init", inline := false, exported := false, params := [("nodedb", Flapjack.Shape.one), ("state_root", Flapjack.Shape.one), ("codedb", Flapjack.Shape.one)], body := globalBody351_62, returnShape := (Flapjack.Shape.one) }
def globalOutput351 := Pancake.PanLang.declToHOL globalData351
end InitECandidate.Proofs.FrontendStages.Declarations
