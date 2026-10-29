import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify723
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body739_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64]

def body739_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body739_2 : Prog (BitVec 64) :=
.seq body739_0 body739_1

def originalData739 : Decl (BitVec 64) :=
.function { name := "fp6_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body739_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData739 : Decl (BitVec 64) :=
.function { name := "fp6_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body739_2, returnShape := (Flapjack.Shape.one) }
def original739 := Pancake.PanLang.declToHOL originalData739
def simplified739 := Pancake.PanLang.declToHOL simplifiedData739
end InitECandidate.Proofs.FrontendStages.Declarations
