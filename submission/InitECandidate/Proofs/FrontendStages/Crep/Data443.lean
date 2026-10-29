import InitECandidate.Proofs.FrontendStages.Crep.Translate427
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody443_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody443_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody443_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 5#64]

def crepBody443_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody443_2

def crepBody443_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody443_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "u256_signextend"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8]

def crepBody443_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "stack_push"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody443_7 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody443_6

def crepBody443_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody443_9 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody443_8

def crepBody443_10 : CrepProg (BitVec 64) :=
.seq crepBody443_7 crepBody443_9

def crepBody443_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody443_12 : CrepProg (BitVec 64) :=
.seq crepBody443_10 crepBody443_11

def crepBody443_13 : CrepProg (BitVec 64) :=
.seq crepBody443_5 crepBody443_12

def crepBody443_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody443_13

def crepBody443_15 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody443_14

def crepBody443_16 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody443_15

def crepBody443_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody443_16

def crepBody443_18 : CrepProg (BitVec 64) :=
.seq crepBody443_4 crepBody443_17

def crepBody443_19 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody443_18

def crepBody443_20 : CrepProg (BitVec 64) :=
.seq crepBody443_3 crepBody443_19

def crepBody443_21 : CrepProg (BitVec 64) :=
.seq crepBody443_1 crepBody443_20

def crepBody443_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody443_21

def crepBody443_23 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody443_22

def crepBody443_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody443_23

def crepBody443_25 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody443_24

def crepBody443_26 : CrepProg (BitVec 64) :=
.seq crepBody443_0 crepBody443_25

def crepBody443_27 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody443_26

def crepBody443_28 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody443_27

def crepBody443_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody443_28

def crepBody443_30 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody443_29

def data443 : CrepProg (BitVec 64) := crepBody443_30
def output443 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 115#8, 105#8, 103#8, 110#8, 101#8, 120#8, 116#8, 101#8, 110#8, 100#8], [], crepProgToHOL data443)
end InitECandidate.Proofs.FrontendStages.Crep
