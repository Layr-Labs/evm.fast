import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify631
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData647 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_gamma" (Flapjack.Exp.const 0#64)
def simplifiedData647 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_gamma" (Flapjack.Exp.const 0#64)
def original647 := Pancake.PanLang.declToHOL originalData647
def simplified647 := Pancake.PanLang.declToHOL simplifiedData647
end InitECandidate.Proofs.FrontendStages.Declarations
