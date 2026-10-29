import InitECandidate.Proofs.FrontendStages.Crep.Translate430
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody446_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody446_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody446_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody446_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody446_2

def crepBody446_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "u256_slt"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody446_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "stack_push_bool" [Flapjack.CrepExp.var 9]

def crepBody446_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody446_5

def crepBody446_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody446_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody446_7

def crepBody446_9 : CrepProg (BitVec 64) :=
.seq crepBody446_6 crepBody446_8

def crepBody446_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody446_11 : CrepProg (BitVec 64) :=
.seq crepBody446_9 crepBody446_10

def crepBody446_12 : CrepProg (BitVec 64) :=
.seq crepBody446_4 crepBody446_11

def crepBody446_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody446_12

def crepBody446_14 : CrepProg (BitVec 64) :=
.seq crepBody446_3 crepBody446_13

def crepBody446_15 : CrepProg (BitVec 64) :=
.seq crepBody446_1 crepBody446_14

def crepBody446_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody446_15

def crepBody446_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody446_16

def crepBody446_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody446_17

def crepBody446_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody446_18

def crepBody446_20 : CrepProg (BitVec 64) :=
.seq crepBody446_0 crepBody446_19

def crepBody446_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody446_20

def crepBody446_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody446_21

def crepBody446_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody446_22

def crepBody446_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody446_23

def data446 : CrepProg (BitVec 64) := crepBody446_24
def output446 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 108#8, 116#8], [], crepProgToHOL data446)
end InitECandidate.Proofs.FrontendStages.Crep
