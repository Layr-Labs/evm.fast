import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify133
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body149_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def originalData149 : Decl (BitVec 64) :=
.function { name := "secp256k1_init", inline := false, exported := false, params := [], body := body149_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData149 : Decl (BitVec 64) :=
.function { name := "secp256k1_init", inline := false, exported := false, params := [], body := body149_0, returnShape := (Flapjack.Shape.one) }
def original149 := Pancake.PanLang.declToHOL originalData149
def simplified149 := Pancake.PanLang.declToHOL simplifiedData149
end InitECandidate.Proofs.FrontendStages.Declarations
