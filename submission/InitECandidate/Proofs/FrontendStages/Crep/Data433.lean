import InitECandidate.Proofs.FrontendStages.Crep.Translate417
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody433_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody433_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody433_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody433_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody433_2

def crepBody433_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_add"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody433_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody433_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody433_5

def crepBody433_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody433_8 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody433_7

def crepBody433_9 : CrepProg (BitVec 64) :=
.seq crepBody433_6 crepBody433_8

def crepBody433_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody433_11 : CrepProg (BitVec 64) :=
.seq crepBody433_9 crepBody433_10

def crepBody433_12 : CrepProg (BitVec 64) :=
.seq crepBody433_4 crepBody433_11

def crepBody433_13 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody433_12

def crepBody433_14 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody433_13

def crepBody433_15 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody433_14

def crepBody433_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody433_15

def crepBody433_17 : CrepProg (BitVec 64) :=
.seq crepBody433_3 crepBody433_16

def crepBody433_18 : CrepProg (BitVec 64) :=
.seq crepBody433_1 crepBody433_17

def crepBody433_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody433_18

def crepBody433_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody433_19

def crepBody433_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody433_20

def crepBody433_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody433_21

def crepBody433_23 : CrepProg (BitVec 64) :=
.seq crepBody433_0 crepBody433_22

def crepBody433_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody433_23

def crepBody433_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody433_24

def crepBody433_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody433_25

def crepBody433_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody433_26

def data433 : CrepProg (BitVec 64) := crepBody433_27
def output433 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 97#8, 100#8, 100#8], [], crepProgToHOL data433)
end InitECandidate.Proofs.FrontendStages.Crep
