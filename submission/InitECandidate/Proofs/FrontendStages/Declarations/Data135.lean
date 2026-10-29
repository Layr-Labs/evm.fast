import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify119
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body135_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nf")

def body135_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body135_2 : Prog (BitVec 64) :=
.seq body135_0 body135_1

def body135_3 : Prog (BitVec 64) :=
.dec ("nf") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])) body135_2

def body135_4 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) body135_3

def body135_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body135_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "f") (Flapjack.Exp.const 0#64)) body135_4 body135_5

def body135_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_grow" [Flapjack.Exp.var Flapjack.VarKind.local "t"]

def body135_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "next")) body135_7 body135_5

def body135_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body135_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body135_11 : Prog (BitVec 64) :=
.seq body135_9 body135_10

def body135_12 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])) body135_11

def body135_13 : Prog (BitVec 64) :=
.seq body135_8 body135_12

def body135_14 : Prog (BitVec 64) :=
.dec ("next") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])) body135_13

def body135_15 : Prog (BitVec 64) :=
.seq body135_6 body135_14

def body135_16 : Prog (BitVec 64) :=
.dec ("f") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])) body135_15

def originalData135 : Decl (BitVec 64) :=
.function { name := "htab_new_node", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body135_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData135 : Decl (BitVec 64) :=
.function { name := "htab_new_node", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body135_16, returnShape := (Flapjack.Shape.one) }
def original135 := Pancake.PanLang.declToHOL originalData135
def simplified135 := Pancake.PanLang.declToHOL simplifiedData135
end InitECandidate.Proofs.FrontendStages.Declarations
