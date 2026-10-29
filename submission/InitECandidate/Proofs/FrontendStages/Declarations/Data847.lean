import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify831
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData847 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bo" (Flapjack.Exp.const 0#64)
def simplifiedData847 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bo" (Flapjack.Exp.const 0#64)
def original847 := Pancake.PanLang.declToHOL originalData847
def simplified847 := Pancake.PanLang.declToHOL simplifiedData847
end InitECandidate.Proofs.FrontendStages.Declarations
