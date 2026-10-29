import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data352
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody352_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody352_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 72#64]) globalBody352_0

def globalBody352_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]))

def globalBody352_3 : Prog (BitVec 64) :=
.seq globalBody352_1 globalBody352_2

def globalBody352_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]

def globalBody352_6 : Prog (BitVec 64) :=
.seq globalBody352_4 globalBody352_5

def globalBody352_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_8 : Prog (BitVec 64) :=
.seq globalBody352_6 globalBody352_7

def globalBody352_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 64#64]

def globalBody352_10 : Prog (BitVec 64) :=
.seq globalBody352_8 globalBody352_9

def globalBody352_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_12 : Prog (BitVec 64) :=
.seq globalBody352_10 globalBody352_11

def globalBody352_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 16#64]

def globalBody352_14 : Prog (BitVec 64) :=
.seq globalBody352_12 globalBody352_13

def globalBody352_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_16 : Prog (BitVec 64) :=
.seq globalBody352_14 globalBody352_15

def globalBody352_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]

def globalBody352_18 : Prog (BitVec 64) :=
.seq globalBody352_16 globalBody352_17

def globalBody352_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_20 : Prog (BitVec 64) :=
.seq globalBody352_18 globalBody352_19

def globalBody352_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 16#64]

def globalBody352_22 : Prog (BitVec 64) :=
.seq globalBody352_20 globalBody352_21

def globalBody352_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_24 : Prog (BitVec 64) :=
.seq globalBody352_22 globalBody352_23

def globalBody352_25 : Prog (BitVec 64) :=
.seq globalBody352_24 globalBody352_13

def globalBody352_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_27 : Prog (BitVec 64) :=
.seq globalBody352_25 globalBody352_26

def globalBody352_28 : Prog (BitVec 64) :=
.seq globalBody352_27 globalBody352_17

def globalBody352_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody352_30 : Prog (BitVec 64) :=
.seq globalBody352_28 globalBody352_29

def globalBody352_31 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody352_32 : Prog (BitVec 64) :=
.seq globalBody352_30 globalBody352_31

def globalBody352_33 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody352_34 : Prog (BitVec 64) :=
.seq globalBody352_32 globalBody352_33

def globalBody352_35 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) globalBody352_34

def globalBody352_36 : Prog (BitVec 64) :=
.seq globalBody352_3 globalBody352_35

def globalData352 : Decl (BitVec 64) :=
.function { name := "state_fresh_tx", inline := false, exported := false, params := [], body := globalBody352_36, returnShape := (Flapjack.Shape.one) }
def globalOutput352 := Pancake.PanLang.declToHOL globalData352
end InitECandidate.Proofs.FrontendStages.Declarations
