import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify881
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData897 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "deposit_contract_address" (Flapjack.Exp.const 0#64)
def simplifiedData897 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "deposit_contract_address" (Flapjack.Exp.const 0#64)
def original897 := Pancake.PanLang.declToHOL originalData897
def simplified897 := Pancake.PanLang.declToHOL simplifiedData897
end InitECandidate.Proofs.FrontendStages.Declarations
