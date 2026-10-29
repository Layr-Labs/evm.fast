import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify547
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData563 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_cont" (Flapjack.Exp.const 0#64)
def simplifiedData563 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_cont" (Flapjack.Exp.const 0#64)
def original563 := Pancake.PanLang.declToHOL originalData563
def simplified563 := Pancake.PanLang.declToHOL simplifiedData563
end InitECandidate.Proofs.FrontendStages.Declarations
