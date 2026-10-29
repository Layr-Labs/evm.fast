import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify74
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData90 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "sha_st" (Flapjack.Exp.const 0#64)
def simplifiedData90 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "sha_st" (Flapjack.Exp.const 0#64)
def original90 := Pancake.PanLang.declToHOL originalData90
def simplified90 := Pancake.PanLang.declToHOL simplifiedData90
end InitECandidate.Proofs.FrontendStages.Declarations
