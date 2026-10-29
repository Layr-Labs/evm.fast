import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data135
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody135_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nf")

def globalBody135_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody135_2 : Prog (BitVec 64) :=
.seq globalBody135_0 globalBody135_1

def globalBody135_3 : Prog (BitVec 64) :=
.dec ("nf") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])) globalBody135_2

def globalBody135_4 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) globalBody135_3

def globalBody135_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody135_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "f") (Flapjack.Exp.const 0#64)) globalBody135_4 globalBody135_5

def globalBody135_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_grow" [Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody135_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "next")) globalBody135_7 globalBody135_5

def globalBody135_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def globalBody135_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody135_11 : Prog (BitVec 64) :=
.seq globalBody135_9 globalBody135_10

def globalBody135_12 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])) globalBody135_11

def globalBody135_13 : Prog (BitVec 64) :=
.seq globalBody135_8 globalBody135_12

def globalBody135_14 : Prog (BitVec 64) :=
.dec ("next") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])) globalBody135_13

def globalBody135_15 : Prog (BitVec 64) :=
.seq globalBody135_6 globalBody135_14

def globalBody135_16 : Prog (BitVec 64) :=
.dec ("f") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])) globalBody135_15

def globalData135 : Decl (BitVec 64) :=
.function { name := "htab_new_node", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := globalBody135_16, returnShape := (Flapjack.Shape.one) }
def globalOutput135 := Pancake.PanLang.declToHOL globalData135
end InitECandidate.Proofs.FrontendStages.Declarations
