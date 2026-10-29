import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify317
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body333_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "tx_signing_hash_mode"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def originalData333 : Decl (BitVec 64) :=
.function { name := "signing_hash_pre155", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body333_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData333 : Decl (BitVec 64) :=
.function { name := "signing_hash_pre155", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body333_0, returnShape := (Flapjack.Shape.one) }
def original333 := Pancake.PanLang.declToHOL originalData333
def simplified333 := Pancake.PanLang.declToHOL simplifiedData333
end InitECandidate.Proofs.FrontendStages.Declarations
