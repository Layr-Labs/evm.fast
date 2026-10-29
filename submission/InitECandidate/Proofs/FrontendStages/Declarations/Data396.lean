import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify380
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body396_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "StateErr" (Flapjack.Exp.const 4#64)

def body396_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body396_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) body396_0 body396_1

def body396_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "s"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "s"]

def body396_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")

def body396_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.var Flapjack.VarKind.local "s"]

def body396_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body396_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "nb"), none)) "u256_add"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "amount"]

def body396_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")

def body396_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "recipient", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body396_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body396_11 : Prog (BitVec 64) :=
.seq body396_9 body396_10

def body396_12 : Prog (BitVec 64) :=
.seq body396_8 body396_11

def body396_13 : Prog (BitVec 64) :=
.seq body396_7 body396_12

def body396_14 : Prog (BitVec 64) :=
.seq body396_6 body396_13

def body396_15 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "recipient"]) body396_14

def body396_16 : Prog (BitVec 64) :=
.seq body396_5 body396_15

def body396_17 : Prog (BitVec 64) :=
.seq body396_4 body396_16

def body396_18 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body396_17

def body396_19 : Prog (BitVec 64) :=
.seq body396_3 body396_18

def body396_20 : Prog (BitVec 64) :=
.seq body396_2 body396_19

def body396_21 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body396_20

def body396_22 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body396_21

def body396_23 : Prog (BitVec 64) :=
.seq body396_2 body396_3

def body396_24 : Prog (BitVec 64) :=
.seq body396_4 body396_5

def body396_25 : Prog (BitVec 64) :=
.seq body396_6 body396_7

def body396_26 : Prog (BitVec 64) :=
.seq body396_25 body396_8

def body396_27 : Prog (BitVec 64) :=
.seq body396_26 body396_9

def body396_28 : Prog (BitVec 64) :=
.seq body396_27 body396_10

def body396_29 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "recipient"]) body396_28

def body396_30 : Prog (BitVec 64) :=
.seq body396_24 body396_29

def body396_31 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body396_30

def body396_32 : Prog (BitVec 64) :=
.seq body396_23 body396_31

def body396_33 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) body396_32

def body396_34 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body396_33

def originalData396 : Decl (BitVec 64) :=
.function { name := "move_ether", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body396_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData396 : Decl (BitVec 64) :=
.function { name := "move_ether", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body396_34, returnShape := (Flapjack.Shape.one) }
def original396 := Pancake.PanLang.declToHOL originalData396
def simplified396 := Pancake.PanLang.declToHOL simplifiedData396
end InitECandidate.Proofs.FrontendStages.Declarations
