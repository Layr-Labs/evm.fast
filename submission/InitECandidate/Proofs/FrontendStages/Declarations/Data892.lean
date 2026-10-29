import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify876
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData892 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "history_storage_address" (Flapjack.Exp.const 0#64)
def simplifiedData892 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "history_storage_address" (Flapjack.Exp.const 0#64)
def original892 := Pancake.PanLang.declToHOL originalData892
def simplified892 := Pancake.PanLang.declToHOL simplifiedData892
end InitECandidate.Proofs.FrontendStages.Declarations
