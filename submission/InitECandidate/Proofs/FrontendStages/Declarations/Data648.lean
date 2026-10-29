import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify632
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData648 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_expw" (Flapjack.Exp.const 0#64)
def simplifiedData648 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_expw" (Flapjack.Exp.const 0#64)
def original648 := Pancake.PanLang.declToHOL originalData648
def simplified648 := Pancake.PanLang.declToHOL simplifiedData648
end InitECandidate.Proofs.FrontendStages.Declarations
