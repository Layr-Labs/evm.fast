import InitECandidate.Proofs.FrontendStages.Crep.Translate425
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody441_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody441_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody441_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "stack_pop" []

def crepBody441_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "charge_gas" [Flapjack.CrepExp.const 8#64]

def crepBody441_4 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody441_3

def crepBody441_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "u256_mulmod"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody441_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "stack_push"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody441_7 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody441_6

def crepBody441_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody441_9 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody441_8

def crepBody441_10 : CrepProg (BitVec 64) :=
.seq crepBody441_7 crepBody441_9

def crepBody441_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody441_12 : CrepProg (BitVec 64) :=
.seq crepBody441_10 crepBody441_11

def crepBody441_13 : CrepProg (BitVec 64) :=
.seq crepBody441_5 crepBody441_12

def crepBody441_14 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody441_13

def crepBody441_15 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody441_14

def crepBody441_16 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody441_15

def crepBody441_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody441_16

def crepBody441_18 : CrepProg (BitVec 64) :=
.seq crepBody441_4 crepBody441_17

def crepBody441_19 : CrepProg (BitVec 64) :=
.seq crepBody441_2 crepBody441_18

def crepBody441_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody441_19

def crepBody441_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody441_20

def crepBody441_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody441_21

def crepBody441_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody441_22

def crepBody441_24 : CrepProg (BitVec 64) :=
.seq crepBody441_1 crepBody441_23

def crepBody441_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody441_24

def crepBody441_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody441_25

def crepBody441_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody441_26

def crepBody441_28 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody441_27

def crepBody441_29 : CrepProg (BitVec 64) :=
.seq crepBody441_0 crepBody441_28

def crepBody441_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody441_29

def crepBody441_31 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody441_30

def crepBody441_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody441_31

def crepBody441_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody441_32

def data441 : CrepProg (BitVec 64) := crepBody441_33
def output441 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 117#8, 108#8, 109#8, 111#8, 100#8], [], crepProgToHOL data441)
end InitECandidate.Proofs.FrontendStages.Crep
