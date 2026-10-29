import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify424
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData440 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "evm_key_buf" (Flapjack.Exp.const 0#64)
def simplifiedData440 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "evm_key_buf" (Flapjack.Exp.const 0#64)
def original440 := Pancake.PanLang.declToHOL originalData440
def simplified440 := Pancake.PanLang.declToHOL simplifiedData440
end InitECandidate.Proofs.FrontendStages.Declarations
