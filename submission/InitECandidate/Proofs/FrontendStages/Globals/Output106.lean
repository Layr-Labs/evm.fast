import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data106
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody106_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "RlpErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody106_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody106_2 : Prog (BitVec 64) :=
.seq globalBody106_0 globalBody106_1

def globalData106 : Decl (BitVec 64) :=
.function { name := "rlp_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := globalBody106_2, returnShape := (Flapjack.Shape.one) }
def globalOutput106 := Pancake.PanLang.declToHOL globalData106
end InitECandidate.Proofs.FrontendStages.Declarations
