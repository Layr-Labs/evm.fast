import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify227
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData243 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "empty_code_hash" (Flapjack.Exp.const 0#64)
def simplifiedData243 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "empty_code_hash" (Flapjack.Exp.const 0#64)
def original243 := Pancake.PanLang.declToHOL originalData243
def simplified243 := Pancake.PanLang.declToHOL simplifiedData243
end InitECandidate.Proofs.FrontendStages.Declarations
