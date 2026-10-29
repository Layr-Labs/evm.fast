import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data149
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody149_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalData149 : Decl (BitVec 64) :=
.function { name := "secp256k1_init", inline := false, exported := false, params := [], body := globalBody149_0, returnShape := (Flapjack.Shape.one) }
def globalOutput149 := Pancake.PanLang.declToHOL globalData149
end InitECandidate.Proofs.FrontendStages.Declarations
