import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify839
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData855 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "withdrawal_request_address" (Flapjack.Exp.const 0#64)
def simplifiedData855 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "withdrawal_request_address" (Flapjack.Exp.const 0#64)
def original855 := Pancake.PanLang.declToHOL originalData855
def simplified855 := Pancake.PanLang.declToHOL simplifiedData855
end InitECandidate.Proofs.FrontendStages.Declarations
