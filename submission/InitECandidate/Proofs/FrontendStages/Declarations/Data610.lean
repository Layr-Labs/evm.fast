import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify594
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData610 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_x" (Flapjack.Exp.const 0#64)
def simplifiedData610 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_x" (Flapjack.Exp.const 0#64)
def original610 := Pancake.PanLang.declToHOL originalData610
def simplified610 := Pancake.PanLang.declToHOL simplifiedData610
end InitECandidate.Proofs.FrontendStages.Declarations
