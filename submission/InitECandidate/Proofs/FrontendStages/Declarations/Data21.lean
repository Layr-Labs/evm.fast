import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body21_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64]))
        (Flapjack.Exp.const 8#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 2#64]))
        (Flapjack.Exp.const 16#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 3#64]))
        (Flapjack.Exp.const 24#64)])

def originalData21 : Decl (BitVec 64) :=
.function { name := "ld_le32", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body21_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData21 : Decl (BitVec 64) :=
.function { name := "ld_le32", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body21_0, returnShape := (Flapjack.Shape.one) }
def original21 := Pancake.PanLang.declToHOL originalData21
def simplified21 := Pancake.PanLang.declToHOL simplifiedData21
end InitECandidate.Proofs.FrontendStages.Declarations
