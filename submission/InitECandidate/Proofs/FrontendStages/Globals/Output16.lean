import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data16
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
def globalBody16_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody16_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody16_2 : Prog (BitVec 64) :=
.seq globalBody16_0 globalBody16_1

def globalData16 : Decl (BitVec 64) :=
.function { name := "scratch_release", inline := false, exported := false, params := [("m", Flapjack.Shape.one)], body := globalBody16_2, returnShape := (Flapjack.Shape.one) }
def globalOutput16 := Pancake.PanLang.declToHOL globalData16
end InitECandidate.Proofs.FrontendStages.Declarations
