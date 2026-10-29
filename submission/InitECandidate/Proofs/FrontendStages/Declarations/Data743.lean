import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify727
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body743_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body743_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def body743_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def body743_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body743_4 : Prog (BitVec 64) :=
.seq body743_2 body743_3

def body743_5 : Prog (BitVec 64) :=
.seq body743_1 body743_4

def body743_6 : Prog (BitVec 64) :=
.seq body743_0 body743_5

def body743_7 : Prog (BitVec 64) :=
.seq body743_0 body743_1

def body743_8 : Prog (BitVec 64) :=
.seq body743_7 body743_2

def body743_9 : Prog (BitVec 64) :=
.seq body743_8 body743_3

def originalData743 : Decl (BitVec 64) :=
.function { name := "fp6_sub", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body743_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData743 : Decl (BitVec 64) :=
.function { name := "fp6_sub", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body743_9, returnShape := (Flapjack.Shape.one) }
def original743 := Pancake.PanLang.declToHOL originalData743
def simplified743 := Pancake.PanLang.declToHOL simplifiedData743
end InitECandidate.Proofs.FrontendStages.Declarations
