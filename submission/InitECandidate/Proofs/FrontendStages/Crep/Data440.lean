import InitECandidate.Proofs.FrontendStages.Crep.Translate424
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody440_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody440_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody440_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "stack_pop" []

def crepBody440_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "charge_gas" [Flapjack.CrepExp.const 8#64]

def crepBody440_4 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody440_3

def crepBody440_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "u256_addmod"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody440_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "stack_push"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody440_7 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody440_6

def crepBody440_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody440_9 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody440_8

def crepBody440_10 : CrepProg (BitVec 64) :=
.seq crepBody440_7 crepBody440_9

def crepBody440_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody440_12 : CrepProg (BitVec 64) :=
.seq crepBody440_10 crepBody440_11

def crepBody440_13 : CrepProg (BitVec 64) :=
.seq crepBody440_5 crepBody440_12

def crepBody440_14 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody440_13

def crepBody440_15 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody440_14

def crepBody440_16 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody440_15

def crepBody440_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody440_16

def crepBody440_18 : CrepProg (BitVec 64) :=
.seq crepBody440_4 crepBody440_17

def crepBody440_19 : CrepProg (BitVec 64) :=
.seq crepBody440_2 crepBody440_18

def crepBody440_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody440_19

def crepBody440_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody440_20

def crepBody440_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody440_21

def crepBody440_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody440_22

def crepBody440_24 : CrepProg (BitVec 64) :=
.seq crepBody440_1 crepBody440_23

def crepBody440_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody440_24

def crepBody440_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody440_25

def crepBody440_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody440_26

def crepBody440_28 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody440_27

def crepBody440_29 : CrepProg (BitVec 64) :=
.seq crepBody440_0 crepBody440_28

def crepBody440_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody440_29

def crepBody440_31 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody440_30

def crepBody440_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody440_31

def crepBody440_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody440_32

def data440 : CrepProg (BitVec 64) := crepBody440_33
def output440 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 97#8, 100#8, 100#8, 109#8, 111#8, 100#8], [], crepProgToHOL data440)
end InitECandidate.Proofs.FrontendStages.Crep
