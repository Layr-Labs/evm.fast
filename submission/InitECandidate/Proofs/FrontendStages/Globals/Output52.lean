import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data52
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate35
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody52_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]]])

def globalData52 : Decl (BitVec 64) :=
.function { name := "u256_not", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody52_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput52 := Pancake.PanLang.declToHOL globalData52
end InitECandidate.Proofs.FrontendStages.Declarations
