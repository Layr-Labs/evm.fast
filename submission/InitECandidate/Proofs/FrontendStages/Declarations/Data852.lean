import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify836
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations

def originalData852 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_si" (Flapjack.Exp.const 0#64)
def simplifiedData852 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_si" (Flapjack.Exp.const 0#64)
def original852 := Pancake.PanLang.declToHOL originalData852
def simplified852 := Pancake.PanLang.declToHOL simplifiedData852
end InitECandidate.Proofs.FrontendStages.Declarations
