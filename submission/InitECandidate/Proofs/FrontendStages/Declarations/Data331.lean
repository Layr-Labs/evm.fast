import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify315
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body331_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 384#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 392#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body331_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body331_2 : Prog (BitVec 64) :=
.seq body331_0 body331_1

def originalData331 : Decl (BitVec 64) :=
.function { name := "get_transaction_hash", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body331_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData331 : Decl (BitVec 64) :=
.function { name := "get_transaction_hash", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body331_2, returnShape := (Flapjack.Shape.one) }
def original331 := Pancake.PanLang.declToHOL originalData331
def simplified331 := Pancake.PanLang.declToHOL simplifiedData331
end InitECandidate.Proofs.FrontendStages.Declarations
