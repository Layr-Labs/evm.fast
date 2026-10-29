import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify222
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData238 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "hdr_zero8" (Flapjack.Exp.const 0#64)
def simplifiedData238 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "hdr_zero8" (Flapjack.Exp.const 0#64)
def original238 := Pancake.PanLang.declToHOL originalData238
def simplified238 := Pancake.PanLang.declToHOL simplifiedData238
end InitECandidate.Proofs.FrontendStages.Declarations
