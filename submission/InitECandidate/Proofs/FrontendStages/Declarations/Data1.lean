import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData1 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "heap_ptr" (Flapjack.Exp.const 0#64)
def simplifiedData1 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "heap_ptr" (Flapjack.Exp.const 0#64)
def original1 := Pancake.PanLang.declToHOL originalData1
def simplified1 := Pancake.PanLang.declToHOL simplifiedData1
end InitECandidate.Proofs.FrontendStages.Declarations
