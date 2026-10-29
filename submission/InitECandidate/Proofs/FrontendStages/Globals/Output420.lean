import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data420
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody420_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_ensure_account" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody420_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody420_2 : Prog (BitVec 64) :=
.seq globalBody420_0 globalBody420_1

def globalData420 : Decl (BitVec 64) :=
.function { name := "add_touched_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody420_2, returnShape := (Flapjack.Shape.one) }
def globalOutput420 := Pancake.PanLang.declToHOL globalData420
end InitECandidate.Proofs.FrontendStages.Declarations
