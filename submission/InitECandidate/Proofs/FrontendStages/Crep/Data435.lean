import InitECandidate.Proofs.FrontendStages.Crep.Translate419
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody435_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody435_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody435_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody435_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody435_2

def crepBody435_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_sub"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody435_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody435_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody435_5

def crepBody435_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody435_8 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody435_7

def crepBody435_9 : CrepProg (BitVec 64) :=
.seq crepBody435_6 crepBody435_8

def crepBody435_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody435_11 : CrepProg (BitVec 64) :=
.seq crepBody435_9 crepBody435_10

def crepBody435_12 : CrepProg (BitVec 64) :=
.seq crepBody435_4 crepBody435_11

def crepBody435_13 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody435_12

def crepBody435_14 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody435_13

def crepBody435_15 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody435_14

def crepBody435_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody435_15

def crepBody435_17 : CrepProg (BitVec 64) :=
.seq crepBody435_3 crepBody435_16

def crepBody435_18 : CrepProg (BitVec 64) :=
.seq crepBody435_1 crepBody435_17

def crepBody435_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody435_18

def crepBody435_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody435_19

def crepBody435_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody435_20

def crepBody435_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody435_21

def crepBody435_23 : CrepProg (BitVec 64) :=
.seq crepBody435_0 crepBody435_22

def crepBody435_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody435_23

def crepBody435_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody435_24

def crepBody435_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody435_25

def crepBody435_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody435_26

def data435 : CrepProg (BitVec 64) := crepBody435_27
def output435 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 117#8, 98#8], [], crepProgToHOL data435)
end InitECandidate.Proofs.FrontendStages.Crep
