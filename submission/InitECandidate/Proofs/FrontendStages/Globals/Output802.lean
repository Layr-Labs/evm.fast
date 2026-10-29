import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data802
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate786
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody802_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_consts_init" []

def globalBody802_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody802_2 : Prog (BitVec 64) :=
.seq globalBody802_0 globalBody802_1

def globalData802 : Decl (BitVec 64) :=
.function { name := "bls_lib_init", inline := false, exported := false, params := [], body := globalBody802_2, returnShape := (Flapjack.Shape.one) }
def globalOutput802 := Pancake.PanLang.declToHOL globalData802
end InitECandidate.Proofs.FrontendStages.Declarations
