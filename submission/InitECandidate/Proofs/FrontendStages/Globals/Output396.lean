import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data396
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody396_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "StateErr" (Flapjack.Exp.const 4#64)

def globalBody396_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody396_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody396_0 globalBody396_1

def globalBody396_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "s"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "s"]

def globalBody396_4 : Prog (BitVec 64) :=
.seq globalBody396_2 globalBody396_3

def globalBody396_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")

def globalBody396_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "sender", Flapjack.Exp.var Flapjack.VarKind.local "s"]

def globalBody396_7 : Prog (BitVec 64) :=
.seq globalBody396_5 globalBody396_6

def globalBody396_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody396_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "nb"), none)) "u256_add"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "amount"]

def globalBody396_10 : Prog (BitVec 64) :=
.seq globalBody396_8 globalBody396_9

def globalBody396_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")

def globalBody396_12 : Prog (BitVec 64) :=
.seq globalBody396_10 globalBody396_11

def globalBody396_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "recipient", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody396_14 : Prog (BitVec 64) :=
.seq globalBody396_12 globalBody396_13

def globalBody396_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody396_16 : Prog (BitVec 64) :=
.seq globalBody396_14 globalBody396_15

def globalBody396_17 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "recipient"]) globalBody396_16

def globalBody396_18 : Prog (BitVec 64) :=
.seq globalBody396_7 globalBody396_17

def globalBody396_19 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) globalBody396_18

def globalBody396_20 : Prog (BitVec 64) :=
.seq globalBody396_4 globalBody396_19

def globalBody396_21 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "amount"]) globalBody396_20

def globalBody396_22 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody396_21

def globalData396 : Decl (BitVec 64) :=
.function { name := "move_ether", inline := false, exported := false, params := [("sender", Flapjack.Shape.one), ("recipient", Flapjack.Shape.one),
  ("amount", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody396_22, returnShape := (Flapjack.Shape.one) }
def globalOutput396 := Pancake.PanLang.declToHOL globalData396
end InitECandidate.Proofs.FrontendStages.Declarations
