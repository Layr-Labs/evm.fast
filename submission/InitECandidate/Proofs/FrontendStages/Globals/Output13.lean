import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data13
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
def globalBody13_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody13_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody13_2 : Prog (BitVec 64) :=
.seq globalBody13_0 globalBody13_1

def globalData13 : Decl (BitVec 64) :=
.function { name := "frame_mem_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := globalBody13_2, returnShape := (Flapjack.Shape.one) }
def globalOutput13 := Pancake.PanLang.declToHOL globalData13
end InitECandidate.Proofs.FrontendStages.Declarations
