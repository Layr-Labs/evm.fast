import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data66
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate50
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody66_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "p"),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 8#64]))
            (Flapjack.Exp.const 32#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 24#64]))
            (Flapjack.Exp.const 32#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64]),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 40#64]))
            (Flapjack.Exp.const 32#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 48#64]),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 56#64]))
            (Flapjack.Exp.const 32#64)]])

def globalData66 : Decl (BitVec 64) :=
.function { name := "digits_to_u256", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := globalBody66_0, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput66 := Pancake.PanLang.declToHOL globalData66
end InitECandidate.Proofs.FrontendStages.Declarations
