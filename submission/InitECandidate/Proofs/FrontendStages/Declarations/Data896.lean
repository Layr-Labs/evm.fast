import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify880
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData896 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "builder_exit_address" (Flapjack.Exp.const 0#64)
def simplifiedData896 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "builder_exit_address" (Flapjack.Exp.const 0#64)
def original896 := Pancake.PanLang.declToHOL originalData896
def simplified896 := Pancake.PanLang.declToHOL simplifiedData896
end InitECandidate.Proofs.FrontendStages.Declarations
