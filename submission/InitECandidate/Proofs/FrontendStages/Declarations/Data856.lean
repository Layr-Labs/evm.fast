import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify840
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData856 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "consolidation_request_address" (Flapjack.Exp.const 0#64)
def simplifiedData856 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "consolidation_request_address" (Flapjack.Exp.const 0#64)
def original856 := Pancake.PanLang.declToHOL originalData856
def simplified856 := Pancake.PanLang.declToHOL simplifiedData856
end InitECandidate.Proofs.FrontendStages.Declarations
