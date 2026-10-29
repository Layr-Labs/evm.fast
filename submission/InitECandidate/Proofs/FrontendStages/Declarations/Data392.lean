import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify376
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body392_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body392_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_account" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body392_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body392_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e") (Flapjack.Exp.const 0#64)) body392_1 body392_2

def body392_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body392_5 : Prog (BitVec 64) :=
.seq body392_3 body392_4

def body392_6 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body392_5

def body392_7 : Prog (BitVec 64) :=
.seq body392_0 body392_6

def originalData392 : Decl (BitVec 64) :=
.function { name := "modify_state_commit", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body392_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData392 : Decl (BitVec 64) :=
.function { name := "modify_state_commit", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body392_7, returnShape := (Flapjack.Shape.one) }
def original392 := Pancake.PanLang.declToHOL originalData392
def simplified392 := Pancake.PanLang.declToHOL simplifiedData392
end InitECandidate.Proofs.FrontendStages.Declarations
