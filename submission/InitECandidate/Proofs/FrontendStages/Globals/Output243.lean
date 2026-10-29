import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data243
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody243_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "MptErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody243_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody243_2 : Prog (BitVec 64) :=
.seq globalBody243_0 globalBody243_1

def globalData243 : Decl (BitVec 64) :=
.function { name := "mpt_fail", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := globalBody243_2, returnShape := (Flapjack.Shape.one) }
def globalOutput243 := Pancake.PanLang.declToHOL globalData243
end InitECandidate.Proofs.FrontendStages.Declarations
