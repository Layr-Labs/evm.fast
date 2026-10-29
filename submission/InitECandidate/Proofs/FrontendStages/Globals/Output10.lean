import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data10
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody10_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody10_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody10_2 : Prog (BitVec 64) :=
.seq globalBody10_0 globalBody10_1

def globalData10 : Decl (BitVec 64) :=
.function { name := "heap_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := globalBody10_2, returnShape := (Flapjack.Shape.one) }
def globalOutput10 := Pancake.PanLang.declToHOL globalData10
end InitECandidate.Proofs.FrontendStages.Declarations
