import InitECandidate.Proofs.FrontendStages.Crep.Translate490
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody506_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody506_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "to_address_masked"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody506_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "access_gas_cost" [Flapjack.CrepExp.var 5]

def crepBody506_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "charge_gas" [Flapjack.CrepExp.var 6]

def crepBody506_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody506_3

def crepBody506_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "warm_after_charge" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody506_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody506_5

def crepBody506_7 : CrepProg (BitVec 64) :=
.seq crepBody506_4 crepBody506_6

def crepBody506_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "get_account" [Flapjack.CrepExp.var 5]

def crepBody506_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "acct_is_empty" [Flapjack.CrepExp.var 7]

def crepBody506_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody506_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody506_10

def crepBody506_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_from_be"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody506_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody506_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody506_13

def crepBody506_15 : CrepProg (BitVec 64) :=
.seq crepBody506_12 crepBody506_14

def crepBody506_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody506_15

def crepBody506_17 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody506_16

def crepBody506_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody506_17

def crepBody506_19 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody506_18

def crepBody506_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody506_11 crepBody506_19

def crepBody506_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody506_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody506_21

def crepBody506_23 : CrepProg (BitVec 64) :=
.seq crepBody506_20 crepBody506_22

def crepBody506_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody506_25 : CrepProg (BitVec 64) :=
.seq crepBody506_23 crepBody506_24

def crepBody506_26 : CrepProg (BitVec 64) :=
.seq crepBody506_9 crepBody506_25

def crepBody506_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody506_26

def crepBody506_28 : CrepProg (BitVec 64) :=
.seq crepBody506_8 crepBody506_27

def crepBody506_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody506_28

def crepBody506_30 : CrepProg (BitVec 64) :=
.seq crepBody506_7 crepBody506_29

def crepBody506_31 : CrepProg (BitVec 64) :=
.seq crepBody506_2 crepBody506_30

def crepBody506_32 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody506_31

def crepBody506_33 : CrepProg (BitVec 64) :=
.seq crepBody506_1 crepBody506_32

def crepBody506_34 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody506_33

def crepBody506_35 : CrepProg (BitVec 64) :=
.seq crepBody506_0 crepBody506_34

def crepBody506_36 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody506_35

def crepBody506_37 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody506_36

def crepBody506_38 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody506_37

def crepBody506_39 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody506_38

def data506 : CrepProg (BitVec 64) := crepBody506_39
def output506 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 101#8, 120#8, 116#8, 99#8, 111#8, 100#8, 101#8, 104#8, 97#8, 115#8, 104#8], [], crepProgToHOL data506)
end InitECandidate.Proofs.FrontendStages.Crep
