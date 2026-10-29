import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify728
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body744_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body744_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64]]

def body744_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64]]

def body744_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body744_4 : Prog (BitVec 64) :=
.seq body744_2 body744_3

def body744_5 : Prog (BitVec 64) :=
.seq body744_1 body744_4

def body744_6 : Prog (BitVec 64) :=
.seq body744_0 body744_5

def body744_7 : Prog (BitVec 64) :=
.seq body744_0 body744_1

def body744_8 : Prog (BitVec 64) :=
.seq body744_7 body744_2

def body744_9 : Prog (BitVec 64) :=
.seq body744_8 body744_3

def originalData744 : Decl (BitVec 64) :=
.function { name := "fp6_neg", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body744_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData744 : Decl (BitVec 64) :=
.function { name := "fp6_neg", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body744_9, returnShape := (Flapjack.Shape.one) }
def original744 := Pancake.PanLang.declToHOL originalData744
def simplified744 := Pancake.PanLang.declToHOL simplifiedData744
end InitECandidate.Proofs.FrontendStages.Declarations
