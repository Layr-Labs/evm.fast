import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify381
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body397_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body397_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")

def body397_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body397_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body397_4 : Prog (BitVec 64) :=
.seq body397_2 body397_3

def body397_5 : Prog (BitVec 64) :=
.seq body397_1 body397_4

def body397_6 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body397_5

def body397_7 : Prog (BitVec 64) :=
.seq body397_0 body397_6

def body397_8 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body397_7

def body397_9 : Prog (BitVec 64) :=
.seq body397_1 body397_2

def body397_10 : Prog (BitVec 64) :=
.seq body397_9 body397_3

def body397_11 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body397_10

def body397_12 : Prog (BitVec 64) :=
.seq body397_0 body397_11

def body397_13 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body397_12

def originalData397 : Decl (BitVec 64) :=
.function { name := "create_ether", inline := false, exported := false, params := [("addr", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body397_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData397 : Decl (BitVec 64) :=
.function { name := "create_ether", inline := false, exported := false, params := [("addr", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body397_13, returnShape := (Flapjack.Shape.one) }
def original397 := Pancake.PanLang.declToHOL originalData397
def simplified397 := Pancake.PanLang.declToHOL simplifiedData397
end InitECandidate.Proofs.FrontendStages.Declarations
