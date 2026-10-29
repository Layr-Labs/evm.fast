import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify535
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body551_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 0#64]))

def originalData551 : Decl (BitVec 64) :=
.function { name := "block_env", inline := false, exported := false, params := [], body := body551_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData551 : Decl (BitVec 64) :=
.function { name := "block_env", inline := false, exported := false, params := [], body := body551_0, returnShape := (Flapjack.Shape.one) }
def original551 := Pancake.PanLang.declToHOL originalData551
def simplified551 := Pancake.PanLang.declToHOL simplifiedData551
end InitECandidate.Proofs.FrontendStages.Declarations
