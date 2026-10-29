import InitECandidate.Proofs.FrontendStages.Crep.Translate433
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody449_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody449_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody449_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody449_1

def crepBody449_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody449_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "stack_push_bool" [Flapjack.CrepExp.var 5]

def crepBody449_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody449_4

def crepBody449_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody449_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody449_6

def crepBody449_8 : CrepProg (BitVec 64) :=
.seq crepBody449_5 crepBody449_7

def crepBody449_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody449_10 : CrepProg (BitVec 64) :=
.seq crepBody449_8 crepBody449_9

def crepBody449_11 : CrepProg (BitVec 64) :=
.seq crepBody449_3 crepBody449_10

def crepBody449_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody449_11

def crepBody449_13 : CrepProg (BitVec 64) :=
.seq crepBody449_2 crepBody449_12

def crepBody449_14 : CrepProg (BitVec 64) :=
.seq crepBody449_0 crepBody449_13

def crepBody449_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody449_14

def crepBody449_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody449_15

def crepBody449_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody449_16

def crepBody449_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody449_17

def data449 : CrepProg (BitVec 64) := crepBody449_18
def output449 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 105#8, 115#8, 122#8, 101#8, 114#8, 111#8], [], crepProgToHOL data449)
end InitECandidate.Proofs.FrontendStages.Crep
