import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify882
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData898 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "deposit_event_signature_hash" (Flapjack.Exp.const 0#64)
def simplifiedData898 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "deposit_event_signature_hash" (Flapjack.Exp.const 0#64)
def original898 := Pancake.PanLang.declToHOL originalData898
def simplified898 := Pancake.PanLang.declToHOL simplifiedData898
end InitECandidate.Proofs.FrontendStages.Declarations
