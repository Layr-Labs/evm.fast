import InitECandidate.Proofs.FrontendStages.Crep.Translate486
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody502_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody502_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "to_address_masked"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody502_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "access_gas_cost" [Flapjack.CrepExp.var 5]

def crepBody502_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 100#64]]

def crepBody502_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody502_3

def crepBody502_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "warm_after_charge" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody502_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody502_5

def crepBody502_7 : CrepProg (BitVec 64) :=
.seq crepBody502_4 crepBody502_6

def crepBody502_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8], none)) "ext_code_of" [Flapjack.CrepExp.var 5]

def crepBody502_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "stack_push_word" [Flapjack.CrepExp.var 8]

def crepBody502_10 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody502_9

def crepBody502_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody502_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody502_11

def crepBody502_13 : CrepProg (BitVec 64) :=
.seq crepBody502_10 crepBody502_12

def crepBody502_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody502_15 : CrepProg (BitVec 64) :=
.seq crepBody502_13 crepBody502_14

def crepBody502_16 : CrepProg (BitVec 64) :=
.seq crepBody502_8 crepBody502_15

def crepBody502_17 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody502_16

def crepBody502_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody502_17

def crepBody502_19 : CrepProg (BitVec 64) :=
.seq crepBody502_7 crepBody502_18

def crepBody502_20 : CrepProg (BitVec 64) :=
.seq crepBody502_2 crepBody502_19

def crepBody502_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody502_20

def crepBody502_22 : CrepProg (BitVec 64) :=
.seq crepBody502_1 crepBody502_21

def crepBody502_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody502_22

def crepBody502_24 : CrepProg (BitVec 64) :=
.seq crepBody502_0 crepBody502_23

def crepBody502_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody502_24

def crepBody502_26 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody502_25

def crepBody502_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody502_26

def crepBody502_28 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody502_27

def data502 : CrepProg (BitVec 64) := crepBody502_28
def output502 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 101#8, 120#8, 116#8, 99#8, 111#8, 100#8, 101#8, 115#8, 105#8, 122#8, 101#8], [], crepProgToHOL data502)
end InitECandidate.Proofs.FrontendStages.Crep
