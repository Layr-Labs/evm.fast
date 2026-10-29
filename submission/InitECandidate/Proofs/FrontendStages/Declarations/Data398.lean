import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify382
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body398_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body398_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")

def body398_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body398_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body398_4 : Prog (BitVec 64) :=
.seq body398_2 body398_3

def body398_5 : Prog (BitVec 64) :=
.seq body398_1 body398_4

def body398_6 : Prog (BitVec 64) :=
.seq body398_0 body398_5

def body398_7 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body398_6

def body398_8 : Prog (BitVec 64) :=
.seq body398_0 body398_1

def body398_9 : Prog (BitVec 64) :=
.seq body398_8 body398_2

def body398_10 : Prog (BitVec 64) :=
.seq body398_9 body398_3

def body398_11 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body398_10

def originalData398 : Decl (BitVec 64) :=
.function { name := "set_account_balance", inline := false, exported := false, params := [("addr", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body398_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData398 : Decl (BitVec 64) :=
.function { name := "set_account_balance", inline := false, exported := false, params := [("addr", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body398_11, returnShape := (Flapjack.Shape.one) }
def original398 := Pancake.PanLang.declToHOL originalData398
def simplified398 := Pancake.PanLang.declToHOL simplifiedData398
end InitECandidate.Proofs.FrontendStages.Declarations
