import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify389
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData405 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_index" (Flapjack.Exp.const 0#64)
def simplifiedData405 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_index" (Flapjack.Exp.const 0#64)
def original405 := Pancake.PanLang.declToHOL originalData405
def simplified405 := Pancake.PanLang.declToHOL simplifiedData405
end InitECandidate.Proofs.FrontendStages.Declarations
