import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify848
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData864 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "wd_rlp_slices" (Flapjack.Exp.const 0#64)
def simplifiedData864 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "wd_rlp_slices" (Flapjack.Exp.const 0#64)
def original864 := Pancake.PanLang.declToHOL originalData864
def simplified864 := Pancake.PanLang.declToHOL simplifiedData864
end InitECandidate.Proofs.FrontendStages.Declarations
