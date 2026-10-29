import InitECandidate.Proofs.FrontendStages.Crep.Translate421
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody437_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody437_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody437_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 5#64]

def crepBody437_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody437_2

def crepBody437_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_sdiv"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody437_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody437_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody437_5

def crepBody437_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody437_8 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody437_7

def crepBody437_9 : CrepProg (BitVec 64) :=
.seq crepBody437_6 crepBody437_8

def crepBody437_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody437_11 : CrepProg (BitVec 64) :=
.seq crepBody437_9 crepBody437_10

def crepBody437_12 : CrepProg (BitVec 64) :=
.seq crepBody437_4 crepBody437_11

def crepBody437_13 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody437_12

def crepBody437_14 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody437_13

def crepBody437_15 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody437_14

def crepBody437_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody437_15

def crepBody437_17 : CrepProg (BitVec 64) :=
.seq crepBody437_3 crepBody437_16

def crepBody437_18 : CrepProg (BitVec 64) :=
.seq crepBody437_1 crepBody437_17

def crepBody437_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody437_18

def crepBody437_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody437_19

def crepBody437_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody437_20

def crepBody437_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody437_21

def crepBody437_23 : CrepProg (BitVec 64) :=
.seq crepBody437_0 crepBody437_22

def crepBody437_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody437_23

def crepBody437_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody437_24

def crepBody437_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody437_25

def crepBody437_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody437_26

def data437 : CrepProg (BitVec 64) := crepBody437_27
def output437 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 100#8, 105#8, 118#8], [], crepProgToHOL data437)
end InitECandidate.Proofs.FrontendStages.Crep
