import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify593
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData609 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_tab" (Flapjack.Exp.const 0#64)
def simplifiedData609 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_tab" (Flapjack.Exp.const 0#64)
def original609 := Pancake.PanLang.declToHOL originalData609
def simplified609 := Pancake.PanLang.declToHOL simplifiedData609
end InitECandidate.Proofs.FrontendStages.Declarations
