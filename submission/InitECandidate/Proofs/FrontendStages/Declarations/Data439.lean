import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify423
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData439 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "pre_hdr_buf" (Flapjack.Exp.const 0#64)
def simplifiedData439 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "pre_hdr_buf" (Flapjack.Exp.const 0#64)
def original439 := Pancake.PanLang.declToHOL originalData439
def simplified439 := Pancake.PanLang.declToHOL simplifiedData439
end InitECandidate.Proofs.FrontendStages.Declarations
