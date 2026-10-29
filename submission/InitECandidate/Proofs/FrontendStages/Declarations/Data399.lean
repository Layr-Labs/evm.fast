import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify383
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body399_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body399_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.const 1#64])

def body399_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body399_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body399_4 : Prog (BitVec 64) :=
.seq body399_2 body399_3

def body399_5 : Prog (BitVec 64) :=
.seq body399_1 body399_4

def body399_6 : Prog (BitVec 64) :=
.seq body399_0 body399_5

def body399_7 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body399_6

def body399_8 : Prog (BitVec 64) :=
.seq body399_0 body399_1

def body399_9 : Prog (BitVec 64) :=
.seq body399_8 body399_2

def body399_10 : Prog (BitVec 64) :=
.seq body399_9 body399_3

def body399_11 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body399_10

def originalData399 : Decl (BitVec 64) :=
.function { name := "increment_nonce", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body399_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData399 : Decl (BitVec 64) :=
.function { name := "increment_nonce", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body399_11, returnShape := (Flapjack.Shape.one) }
def original399 := Pancake.PanLang.declToHOL originalData399
def simplified399 := Pancake.PanLang.declToHOL simplifiedData399
end InitECandidate.Proofs.FrontendStages.Declarations
