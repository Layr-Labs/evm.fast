import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify732
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body748_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 576#64]

def body748_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body748_2 : Prog (BitVec 64) :=
.seq body748_0 body748_1

def originalData748 : Decl (BitVec 64) :=
.function { name := "fp12_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body748_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData748 : Decl (BitVec 64) :=
.function { name := "fp12_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body748_2, returnShape := (Flapjack.Shape.one) }
def original748 := Pancake.PanLang.declToHOL originalData748
def simplified748 := Pancake.PanLang.declToHOL simplifiedData748
end InitECandidate.Proofs.FrontendStages.Declarations
