import InitECandidate.Proofs.FrontendStages.Crep.Translate439
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody455_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody455_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody455_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody455_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody455_2

def crepBody455_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody455_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "u256_shl"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9]

def crepBody455_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "stack_push"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody455_7 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody455_6

def crepBody455_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody455_9 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody455_8

def crepBody455_10 : CrepProg (BitVec 64) :=
.seq crepBody455_7 crepBody455_9

def crepBody455_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody455_12 : CrepProg (BitVec 64) :=
.seq crepBody455_10 crepBody455_11

def crepBody455_13 : CrepProg (BitVec 64) :=
.seq crepBody455_5 crepBody455_12

def crepBody455_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody455_13

def crepBody455_15 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody455_14

def crepBody455_16 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody455_15

def crepBody455_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody455_16

def crepBody455_18 : CrepProg (BitVec 64) :=
.seq crepBody455_4 crepBody455_17

def crepBody455_19 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody455_18

def crepBody455_20 : CrepProg (BitVec 64) :=
.seq crepBody455_3 crepBody455_19

def crepBody455_21 : CrepProg (BitVec 64) :=
.seq crepBody455_1 crepBody455_20

def crepBody455_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody455_21

def crepBody455_23 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody455_22

def crepBody455_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody455_23

def crepBody455_25 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody455_24

def crepBody455_26 : CrepProg (BitVec 64) :=
.seq crepBody455_0 crepBody455_25

def crepBody455_27 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody455_26

def crepBody455_28 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody455_27

def crepBody455_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody455_28

def crepBody455_30 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody455_29

def data455 : CrepProg (BitVec 64) := crepBody455_30
def output455 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 104#8, 108#8], [], crepProgToHOL data455)
end InitECandidate.Proofs.FrontendStages.Crep
