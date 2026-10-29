import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data41
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate24
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody41_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))

def globalData41 : Decl (BitVec 64) :=
.function { name := "u256_low", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody41_0, returnShape := (Flapjack.Shape.one) }
def globalOutput41 := Pancake.PanLang.declToHOL globalData41
end InitECandidate.Proofs.FrontendStages.Declarations
