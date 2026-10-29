import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data472
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody472_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody472_1 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 168#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody472_0

def globalData472 : Decl (BitVec 64) :=
.function { name := "is_warm_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody472_1, returnShape := (Flapjack.Shape.one) }
def globalOutput472 := Pancake.PanLang.declToHOL globalData472
end InitECandidate.Proofs.FrontendStages.Declarations
