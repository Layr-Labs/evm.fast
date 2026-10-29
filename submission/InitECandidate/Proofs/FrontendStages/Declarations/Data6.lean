import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData6 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "frame_mem_ptr" (Flapjack.Exp.const 0#64)
def simplifiedData6 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "frame_mem_ptr" (Flapjack.Exp.const 0#64)
def original6 := Pancake.PanLang.declToHOL originalData6
def simplified6 := Pancake.PanLang.declToHOL simplifiedData6
end InitECandidate.Proofs.FrontendStages.Declarations
