import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify453
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body469_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "n"])

def body469_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body469_2 : Prog (BitVec 64) :=
.seq body469_0 body469_1

def originalData469 : Decl (BitVec 64) :=
.function { name := "pc_add", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body469_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData469 : Decl (BitVec 64) :=
.function { name := "pc_add", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body469_2, returnShape := (Flapjack.Shape.one) }
def original469 := Pancake.PanLang.declToHOL originalData469
def simplified469 := Pancake.PanLang.declToHOL simplifiedData469
end InitECandidate.Proofs.FrontendStages.Declarations
