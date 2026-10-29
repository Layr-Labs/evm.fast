import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data623
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody623_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "va"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "va", Flapjack.Exp.var Flapjack.VarKind.local "vb",
      Flapjack.Exp.var Flapjack.VarKind.local "x"])

def globalBody623_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vd"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vd", Flapjack.Exp.var Flapjack.VarKind.local "va"])
    (Flapjack.Exp.const 32#64))

def globalBody623_2 : Prog (BitVec 64) :=
.seq globalBody623_0 globalBody623_1

def globalBody623_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vc", Flapjack.Exp.var Flapjack.VarKind.local "vd"])

def globalBody623_4 : Prog (BitVec 64) :=
.seq globalBody623_2 globalBody623_3

def globalBody623_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vb"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vb", Flapjack.Exp.var Flapjack.VarKind.local "vc"])
    (Flapjack.Exp.const 24#64))

def globalBody623_6 : Prog (BitVec 64) :=
.seq globalBody623_4 globalBody623_5

def globalBody623_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "va"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "va", Flapjack.Exp.var Flapjack.VarKind.local "vb",
      Flapjack.Exp.var Flapjack.VarKind.local "y"])

def globalBody623_8 : Prog (BitVec 64) :=
.seq globalBody623_6 globalBody623_7

def globalBody623_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vd"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vd", Flapjack.Exp.var Flapjack.VarKind.local "va"])
    (Flapjack.Exp.const 16#64))

def globalBody623_10 : Prog (BitVec 64) :=
.seq globalBody623_8 globalBody623_9

def globalBody623_11 : Prog (BitVec 64) :=
.seq globalBody623_10 globalBody623_3

def globalBody623_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vb"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vb", Flapjack.Exp.var Flapjack.VarKind.local "vc"])
    (Flapjack.Exp.const 63#64))

def globalBody623_13 : Prog (BitVec 64) :=
.seq globalBody623_11 globalBody623_12

def globalBody623_14 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pa") (Flapjack.Exp.var Flapjack.VarKind.local "va")

def globalBody623_15 : Prog (BitVec 64) :=
.seq globalBody623_13 globalBody623_14

def globalBody623_16 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pb") (Flapjack.Exp.var Flapjack.VarKind.local "vb")

def globalBody623_17 : Prog (BitVec 64) :=
.seq globalBody623_15 globalBody623_16

def globalBody623_18 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pc") (Flapjack.Exp.var Flapjack.VarKind.local "vc")

def globalBody623_19 : Prog (BitVec 64) :=
.seq globalBody623_17 globalBody623_18

def globalBody623_20 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pd") (Flapjack.Exp.var Flapjack.VarKind.local "vd")

def globalBody623_21 : Prog (BitVec 64) :=
.seq globalBody623_19 globalBody623_20

def globalBody623_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody623_23 : Prog (BitVec 64) :=
.seq globalBody623_21 globalBody623_22

def globalBody623_24 : Prog (BitVec 64) :=
.dec ("vd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pd")) globalBody623_23

def globalBody623_25 : Prog (BitVec 64) :=
.dec ("vc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pc")) globalBody623_24

def globalBody623_26 : Prog (BitVec 64) :=
.dec ("vb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pb")) globalBody623_25

def globalBody623_27 : Prog (BitVec 64) :=
.dec ("va") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pa")) globalBody623_26

def globalBody623_28 : Prog (BitVec 64) :=
.dec ("pd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 8#64]]) globalBody623_27

def globalBody623_29 : Prog (BitVec 64) :=
.dec ("pc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.const 8#64]]) globalBody623_28

def globalBody623_30 : Prog (BitVec 64) :=
.dec ("pb") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 8#64]]) globalBody623_29

def globalBody623_31 : Prog (BitVec 64) :=
.dec ("pa") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]]) globalBody623_30

def globalData623 : Decl (BitVec 64) :=
.function { name := "blake2_g", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("c", Flapjack.Shape.one), ("d", Flapjack.Shape.one),
  ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := globalBody623_31, returnShape := (Flapjack.Shape.one) }
def globalOutput623 := Pancake.PanLang.declToHOL globalData623
end InitECandidate.Proofs.FrontendStages.Declarations
