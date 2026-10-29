import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify911
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData927 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "fail_code" (Flapjack.Exp.const 0#64)
def simplifiedData927 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "fail_code" (Flapjack.Exp.const 0#64)
def original927 := Pancake.PanLang.declToHOL originalData927
def simplified927 := Pancake.PanLang.declToHOL simplifiedData927
end InitECandidate.Proofs.FrontendStages.Declarations
