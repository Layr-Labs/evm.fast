import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify392
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData408 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_key_buf" (Flapjack.Exp.const 0#64)
def simplifiedData408 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_key_buf" (Flapjack.Exp.const 0#64)
def original408 := Pancake.PanLang.declToHOL originalData408
def simplified408 := Pancake.PanLang.declToHOL simplifiedData408
end InitECandidate.Proofs.FrontendStages.Declarations
