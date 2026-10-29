import InitECandidate.Proofs.FrontendStages.Crep.Translate438
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody454_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody454_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody454_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody454_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody454_2

def crepBody454_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody454_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_byte"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8]

def crepBody454_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "stack_push_word" [Flapjack.CrepExp.var 10]

def crepBody454_7 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody454_6

def crepBody454_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody454_9 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody454_8

def crepBody454_10 : CrepProg (BitVec 64) :=
.seq crepBody454_7 crepBody454_9

def crepBody454_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody454_12 : CrepProg (BitVec 64) :=
.seq crepBody454_10 crepBody454_11

def crepBody454_13 : CrepProg (BitVec 64) :=
.seq crepBody454_5 crepBody454_12

def crepBody454_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody454_13

def crepBody454_15 : CrepProg (BitVec 64) :=
.seq crepBody454_4 crepBody454_14

def crepBody454_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody454_15

def crepBody454_17 : CrepProg (BitVec 64) :=
.seq crepBody454_3 crepBody454_16

def crepBody454_18 : CrepProg (BitVec 64) :=
.seq crepBody454_1 crepBody454_17

def crepBody454_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody454_18

def crepBody454_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody454_19

def crepBody454_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody454_20

def crepBody454_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody454_21

def crepBody454_23 : CrepProg (BitVec 64) :=
.seq crepBody454_0 crepBody454_22

def crepBody454_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody454_23

def crepBody454_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody454_24

def crepBody454_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody454_25

def crepBody454_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody454_26

def data454 : CrepProg (BitVec 64) := crepBody454_27
def output454 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 98#8, 121#8, 116#8, 101#8], [], crepProgToHOL data454)
end InitECandidate.Proofs.FrontendStages.Crep
