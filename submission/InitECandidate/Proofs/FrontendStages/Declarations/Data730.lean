import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify714
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body730_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def originalData730 : Decl (BitVec 64) :=
.function { name := "fp2_dbl", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body730_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData730 : Decl (BitVec 64) :=
.function { name := "fp2_dbl", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body730_0, returnShape := (Flapjack.Shape.one) }
def original730 := Pancake.PanLang.declToHOL originalData730
def simplified730 := Pancake.PanLang.declToHOL simplifiedData730
end InitECandidate.Proofs.FrontendStages.Declarations
