import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify378
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body394_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 1#64]

def body394_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body394_2 : Prog (BitVec 64) :=
.seq body394_0 body394_1

def originalData394 : Decl (BitVec 64) :=
.function { name := "mark_account_created", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body394_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData394 : Decl (BitVec 64) :=
.function { name := "mark_account_created", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body394_2, returnShape := (Flapjack.Shape.one) }
def original394 := Pancake.PanLang.declToHOL originalData394
def simplified394 := Pancake.PanLang.declToHOL simplifiedData394
end InitECandidate.Proofs.FrontendStages.Declarations
