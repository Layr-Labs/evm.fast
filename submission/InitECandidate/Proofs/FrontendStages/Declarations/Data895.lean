import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify879
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData895 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "builder_deposit_address" (Flapjack.Exp.const 0#64)
def simplifiedData895 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "builder_deposit_address" (Flapjack.Exp.const 0#64)
def original895 := Pancake.PanLang.declToHOL originalData895
def simplified895 := Pancake.PanLang.declToHOL simplifiedData895
end InitECandidate.Proofs.FrontendStages.Declarations
