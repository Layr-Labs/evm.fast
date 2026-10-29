import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify844
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData860 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "deposit_event_signature_hash" (Flapjack.Exp.const 0#64)
def simplifiedData860 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "deposit_event_signature_hash" (Flapjack.Exp.const 0#64)
def original860 := Pancake.PanLang.declToHOL originalData860
def simplified860 := Pancake.PanLang.declToHOL simplifiedData860
end InitECandidate.Proofs.FrontendStages.Declarations
