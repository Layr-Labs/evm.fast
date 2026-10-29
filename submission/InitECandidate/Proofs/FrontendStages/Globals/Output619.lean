import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data619
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody619_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "va"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "va", Flapjack.Exp.var Flapjack.VarKind.local "vb",
      Flapjack.Exp.var Flapjack.VarKind.local "x"])

def globalBody619_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vd"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vd", Flapjack.Exp.var Flapjack.VarKind.local "va"])
    (Flapjack.Exp.const 32#64))

def globalBody619_2 : Prog (BitVec 64) :=
.seq globalBody619_0 globalBody619_1

def globalBody619_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "vc", Flapjack.Exp.var Flapjack.VarKind.local "vd"])

def globalBody619_4 : Prog (BitVec 64) :=
.seq globalBody619_2 globalBody619_3

def globalBody619_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vb"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vb", Flapjack.Exp.var Flapjack.VarKind.local "vc"])
    (Flapjack.Exp.const 24#64))

def globalBody619_6 : Prog (BitVec 64) :=
.seq globalBody619_4 globalBody619_5

def globalBody619_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "va"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "va", Flapjack.Exp.var Flapjack.VarKind.local "vb",
      Flapjack.Exp.var Flapjack.VarKind.local "y"])

def globalBody619_8 : Prog (BitVec 64) :=
.seq globalBody619_6 globalBody619_7

def globalBody619_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vd"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vd", Flapjack.Exp.var Flapjack.VarKind.local "va"])
    (Flapjack.Exp.const 16#64))

def globalBody619_10 : Prog (BitVec 64) :=
.seq globalBody619_8 globalBody619_9

def globalBody619_11 : Prog (BitVec 64) :=
.seq globalBody619_10 globalBody619_3

def globalBody619_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "vb"
  (Flapjack.Exp.shift Flapjack.Shift.ror
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.var Flapjack.VarKind.local "vb", Flapjack.Exp.var Flapjack.VarKind.local "vc"])
    (Flapjack.Exp.const 63#64))

def globalBody619_13 : Prog (BitVec 64) :=
.seq globalBody619_11 globalBody619_12

def globalBody619_14 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pa") (Flapjack.Exp.var Flapjack.VarKind.local "va")

def globalBody619_15 : Prog (BitVec 64) :=
.seq globalBody619_13 globalBody619_14

def globalBody619_16 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pb") (Flapjack.Exp.var Flapjack.VarKind.local "vb")

def globalBody619_17 : Prog (BitVec 64) :=
.seq globalBody619_15 globalBody619_16

def globalBody619_18 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pc") (Flapjack.Exp.var Flapjack.VarKind.local "vc")

def globalBody619_19 : Prog (BitVec 64) :=
.seq globalBody619_17 globalBody619_18

def globalBody619_20 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pd") (Flapjack.Exp.var Flapjack.VarKind.local "vd")

def globalBody619_21 : Prog (BitVec 64) :=
.seq globalBody619_19 globalBody619_20

def globalBody619_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody619_23 : Prog (BitVec 64) :=
.seq globalBody619_21 globalBody619_22

def globalBody619_24 : Prog (BitVec 64) :=
.dec ("vd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pd")) globalBody619_23

def globalBody619_25 : Prog (BitVec 64) :=
.dec ("vc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pc")) globalBody619_24

def globalBody619_26 : Prog (BitVec 64) :=
.dec ("vb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pb")) globalBody619_25

def globalBody619_27 : Prog (BitVec 64) :=
.dec ("va") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "pa")) globalBody619_26

def globalBody619_28 : Prog (BitVec 64) :=
.dec ("pd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 8#64]]) globalBody619_27

def globalBody619_29 : Prog (BitVec 64) :=
.dec ("pc") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.const 8#64]]) globalBody619_28

def globalBody619_30 : Prog (BitVec 64) :=
.dec ("pb") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 8#64]]) globalBody619_29

def globalBody619_31 : Prog (BitVec 64) :=
.dec ("pa") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 368#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]]) globalBody619_30

def globalData619 : Decl (BitVec 64) :=
.function { name := "blake2_g", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("c", Flapjack.Shape.one), ("d", Flapjack.Shape.one),
  ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := globalBody619_31, returnShape := (Flapjack.Shape.one) }
def globalOutput619 := Pancake.PanLang.declToHOL globalData619
end InitECandidate.Proofs.FrontendStages.Declarations
