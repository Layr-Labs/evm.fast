import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify533
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body549_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "c"]

def body549_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_after_charge"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "c"]

def body549_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body549_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body549_4 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.const 32#64]) body549_3

def body549_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e") (Flapjack.Exp.const 0#64)) body549_2 body549_4

def body549_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body549_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body549_8 : Prog (BitVec 64) :=
.seq body549_6 body549_7

def body549_9 : Prog (BitVec 64) :=
.seq body549_5 body549_8

def body549_10 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body549_9

def body549_11 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body549_10

def body549_12 : Prog (BitVec 64) :=
.seq body549_1 body549_11

def body549_13 : Prog (BitVec 64) :=
.seq body549_0 body549_12

def body549_14 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("access_gas_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body549_13

def body549_15 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "av"]) body549_14

def body549_16 : Prog (BitVec 64) :=
.decCall ("av") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body549_15

def body549_17 : Prog (BitVec 64) :=
.seq body549_0 body549_1

def body549_18 : Prog (BitVec 64) :=
.seq body549_5 body549_6

def body549_19 : Prog (BitVec 64) :=
.seq body549_18 body549_7

def body549_20 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body549_19

def body549_21 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body549_20

def body549_22 : Prog (BitVec 64) :=
.seq body549_17 body549_21

def body549_23 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("access_gas_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body549_22

def body549_24 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "av"]) body549_23

def body549_25 : Prog (BitVec 64) :=
.decCall ("av") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body549_24

def originalData549 : Decl (BitVec 64) :=
.function { name := "op_extcodehash", inline := false, exported := false, params := [], body := body549_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData549 : Decl (BitVec 64) :=
.function { name := "op_extcodehash", inline := false, exported := false, params := [], body := body549_25, returnShape := (Flapjack.Shape.one) }
def original549 := Pancake.PanLang.declToHOL originalData549
def simplified549 := Pancake.PanLang.declToHOL simplifiedData549
end InitECandidate.Proofs.FrontendStages.Declarations
