import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify733
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body749_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body749_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64]]

def body749_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body749_3 : Prog (BitVec 64) :=
.seq body749_1 body749_2

def body749_4 : Prog (BitVec 64) :=
.seq body749_0 body749_3

def body749_5 : Prog (BitVec 64) :=
.seq body749_0 body749_1

def body749_6 : Prog (BitVec 64) :=
.seq body749_5 body749_2

def originalData749 : Decl (BitVec 64) :=
.function { name := "fp12_set_one", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body749_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData749 : Decl (BitVec 64) :=
.function { name := "fp12_set_one", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body749_6, returnShape := (Flapjack.Shape.one) }
def original749 := Pancake.PanLang.declToHOL originalData749
def simplified749 := Pancake.PanLang.declToHOL simplifiedData749
end InitECandidate.Proofs.FrontendStages.Declarations
