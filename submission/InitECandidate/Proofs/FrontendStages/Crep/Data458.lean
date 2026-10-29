import InitECandidate.Proofs.FrontendStages.Crep.Translate442
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody458_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody458_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 5#64]

def crepBody458_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody458_1

def crepBody458_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody458_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "stack_push_word"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 256#64, Flapjack.CrepExp.var 5]]

def crepBody458_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody458_4

def crepBody458_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody458_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody458_6

def crepBody458_8 : CrepProg (BitVec 64) :=
.seq crepBody458_5 crepBody458_7

def crepBody458_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody458_10 : CrepProg (BitVec 64) :=
.seq crepBody458_8 crepBody458_9

def crepBody458_11 : CrepProg (BitVec 64) :=
.seq crepBody458_3 crepBody458_10

def crepBody458_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody458_11

def crepBody458_13 : CrepProg (BitVec 64) :=
.seq crepBody458_2 crepBody458_12

def crepBody458_14 : CrepProg (BitVec 64) :=
.seq crepBody458_0 crepBody458_13

def crepBody458_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody458_14

def crepBody458_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody458_15

def crepBody458_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody458_16

def crepBody458_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody458_17

def data458 : CrepProg (BitVec 64) := crepBody458_18
def output458 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 108#8, 122#8], [], crepProgToHOL data458)
end InitECandidate.Proofs.FrontendStages.Crep
