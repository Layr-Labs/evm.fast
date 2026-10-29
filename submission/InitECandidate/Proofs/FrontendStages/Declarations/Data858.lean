import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify842
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData858 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "builder_exit_address" (Flapjack.Exp.const 0#64)
def simplifiedData858 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "builder_exit_address" (Flapjack.Exp.const 0#64)
def original858 := Pancake.PanLang.declToHOL originalData858
def simplified858 := Pancake.PanLang.declToHOL simplifiedData858
end InitECandidate.Proofs.FrontendStages.Declarations
