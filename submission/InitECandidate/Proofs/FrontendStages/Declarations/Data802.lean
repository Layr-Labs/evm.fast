import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify786
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body802_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_consts_init" []

def body802_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body802_2 : Prog (BitVec 64) :=
.seq body802_0 body802_1

def originalData802 : Decl (BitVec 64) :=
.function { name := "bls_lib_init", inline := false, exported := false, params := [], body := body802_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData802 : Decl (BitVec 64) :=
.function { name := "bls_lib_init", inline := false, exported := false, params := [], body := body802_2, returnShape := (Flapjack.Shape.one) }
def original802 := Pancake.PanLang.declToHOL originalData802
def simplified802 := Pancake.PanLang.declToHOL simplifiedData802
end InitECandidate.Proofs.FrontendStages.Declarations
