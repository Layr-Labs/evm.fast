import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify337
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData353 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "journal" (Flapjack.Exp.const 0#64)
def simplifiedData353 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "journal" (Flapjack.Exp.const 0#64)
def original353 := Pancake.PanLang.declToHOL originalData353
def simplified353 := Pancake.PanLang.declToHOL simplifiedData353
end InitECandidate.Proofs.FrontendStages.Declarations
