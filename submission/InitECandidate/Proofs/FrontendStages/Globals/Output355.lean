import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data355
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody355_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody355_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody355_0

def globalBody355_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodedb")

def globalBody355_3 : Prog (BitVec 64) :=
.seq globalBody355_1 globalBody355_2

def globalBody355_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "state_root")

def globalBody355_5 : Prog (BitVec 64) :=
.seq globalBody355_3 globalBody355_4

def globalBody355_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "codedb")

def globalBody355_7 : Prog (BitVec 64) :=
.seq globalBody355_5 globalBody355_6

def globalBody355_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "root")

def globalBody355_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_10 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody355_11 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) globalBody355_10

def globalBody355_12 : Prog (BitVec 64) :=
.seq globalBody355_9 globalBody355_11

def globalBody355_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]))

def globalBody355_14 : Prog (BitVec 64) :=
.seq globalBody355_12 globalBody355_13

def globalBody355_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 256#64]

def globalBody355_16 : Prog (BitVec 64) :=
.seq globalBody355_14 globalBody355_15

def globalBody355_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_18 : Prog (BitVec 64) :=
.seq globalBody355_16 globalBody355_17

def globalBody355_19 : Prog (BitVec 64) :=
.seq globalBody355_18 globalBody355_15

def globalBody355_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_21 : Prog (BitVec 64) :=
.seq globalBody355_19 globalBody355_20

def globalBody355_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 256#64]

def globalBody355_23 : Prog (BitVec 64) :=
.seq globalBody355_21 globalBody355_22

def globalBody355_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_25 : Prog (BitVec 64) :=
.seq globalBody355_23 globalBody355_24

def globalBody355_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]

def globalBody355_27 : Prog (BitVec 64) :=
.seq globalBody355_25 globalBody355_26

def globalBody355_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_29 : Prog (BitVec 64) :=
.seq globalBody355_27 globalBody355_28

def globalBody355_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 64#64]

def globalBody355_31 : Prog (BitVec 64) :=
.seq globalBody355_29 globalBody355_30

def globalBody355_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_33 : Prog (BitVec 64) :=
.seq globalBody355_31 globalBody355_32

def globalBody355_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]

def globalBody355_35 : Prog (BitVec 64) :=
.seq globalBody355_33 globalBody355_34

def globalBody355_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_37 : Prog (BitVec 64) :=
.seq globalBody355_35 globalBody355_36

def globalBody355_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def globalBody355_39 : Prog (BitVec 64) :=
.seq globalBody355_37 globalBody355_38

def globalBody355_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 0#64)

def globalBody355_41 : Prog (BitVec 64) :=
.seq globalBody355_39 globalBody355_40

def globalBody355_42 : Prog (BitVec 64) :=
.seq globalBody355_41 globalBody355_15

def globalBody355_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
      Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody355_44 : Prog (BitVec 64) :=
.seq globalBody355_42 globalBody355_43

def globalBody355_45 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody355_46 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody355_45

def globalBody355_47 : Prog (BitVec 64) :=
.seq globalBody355_44 globalBody355_46

def globalBody355_48 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 208#64])
  (Flapjack.Exp.const 524288#64)

def globalBody355_49 : Prog (BitVec 64) :=
.seq globalBody355_47 globalBody355_48

def globalBody355_50 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 200#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody355_51 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 208#64]),
      Flapjack.Exp.const 32#64]]) globalBody355_50

def globalBody355_52 : Prog (BitVec 64) :=
.seq globalBody355_49 globalBody355_51

def globalBody355_53 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody355_54 : Prog (BitVec 64) :=
.seq globalBody355_52 globalBody355_53

def globalBody355_55 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 0#64)

def globalBody355_56 : Prog (BitVec 64) :=
.seq globalBody355_54 globalBody355_55

def globalBody355_57 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody355_58 : Prog (BitVec 64) :=
.seq globalBody355_56 globalBody355_57

def globalBody355_59 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]) globalBody355_58

def globalBody355_60 : Prog (BitVec 64) :=
.seq globalBody355_8 globalBody355_59

def globalBody355_61 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("decode_witness_to_mpt") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb", Flapjack.Exp.var Flapjack.VarKind.local "state_root"]) globalBody355_60

def globalBody355_62 : Prog (BitVec 64) :=
.seq globalBody355_7 globalBody355_61

def globalData355 : Decl (BitVec 64) :=
.function { name := "state_init", inline := false, exported := false, params := [("nodedb", Flapjack.Shape.one), ("state_root", Flapjack.Shape.one), ("codedb", Flapjack.Shape.one)], body := globalBody355_62, returnShape := (Flapjack.Shape.one) }
def globalOutput355 := Pancake.PanLang.declToHOL globalData355
end InitECandidate.Proofs.FrontendStages.Declarations
