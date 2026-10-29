import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data469
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody469_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 0#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody469_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody469_2 : Prog (BitVec 64) :=
.seq globalBody469_0 globalBody469_1

def globalData469 : Decl (BitVec 64) :=
.function { name := "pc_add", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := globalBody469_2, returnShape := (Flapjack.Shape.one) }
def globalOutput469 := Pancake.PanLang.declToHOL globalData469
end InitECandidate.Proofs.FrontendStages.Declarations
