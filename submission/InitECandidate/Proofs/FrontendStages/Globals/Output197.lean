import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data197
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody197_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "SszErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody197_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody197_2 : Prog (BitVec 64) :=
.seq globalBody197_0 globalBody197_1

def globalData197 : Decl (BitVec 64) :=
.function { name := "ssz_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := globalBody197_2, returnShape := (Flapjack.Shape.one) }
def globalOutput197 := Pancake.PanLang.declToHOL globalData197
end InitECandidate.Proofs.FrontendStages.Declarations
