import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify837
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData853 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "beacon_roots_address" (Flapjack.Exp.const 0#64)
def simplifiedData853 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "beacon_roots_address" (Flapjack.Exp.const 0#64)
def original853 := Pancake.PanLang.declToHOL originalData853
def simplified853 := Pancake.PanLang.declToHOL simplifiedData853
end InitECandidate.Proofs.FrontendStages.Declarations
