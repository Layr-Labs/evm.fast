import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify454
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body470_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]))

def originalData470 : Decl (BitVec 64) :=
.function { name := "cur_msg", inline := false, exported := false, params := [], body := body470_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData470 : Decl (BitVec 64) :=
.function { name := "cur_msg", inline := false, exported := false, params := [], body := body470_0, returnShape := (Flapjack.Shape.one) }
def original470 := Pancake.PanLang.declToHOL originalData470
def simplified470 := Pancake.PanLang.declToHOL simplifiedData470
end InitECandidate.Proofs.FrontendStages.Declarations
