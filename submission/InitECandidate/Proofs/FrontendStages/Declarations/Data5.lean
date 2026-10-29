import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData5 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "scratch_ptr" (Flapjack.Exp.const 0#64)
def simplifiedData5 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "scratch_ptr" (Flapjack.Exp.const 0#64)
def original5 := Pancake.PanLang.declToHOL originalData5
def simplified5 := Pancake.PanLang.declToHOL simplifiedData5
end InitECandidate.Proofs.FrontendStages.Declarations
