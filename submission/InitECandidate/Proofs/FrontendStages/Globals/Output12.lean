import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data12
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
def globalBody12_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64]))

def globalData12 : Decl (BitVec 64) :=
.function { name := "frame_mem_mark", inline := false, exported := false, params := [], body := globalBody12_0, returnShape := (Flapjack.Shape.one) }
def globalOutput12 := Pancake.PanLang.declToHOL globalData12
end InitECandidate.Proofs.FrontendStages.Declarations
