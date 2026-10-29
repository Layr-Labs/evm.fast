import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify302
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body318_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.const 131072#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])])

def originalData318 : Decl (BitVec 64) :=
.function { name := "calculate_total_blob_gas", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body318_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData318 : Decl (BitVec 64) :=
.function { name := "calculate_total_blob_gas", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body318_0, returnShape := (Flapjack.Shape.one) }
def original318 := Pancake.PanLang.declToHOL originalData318
def simplified318 := Pancake.PanLang.declToHOL simplifiedData318
end InitECandidate.Proofs.FrontendStages.Declarations
