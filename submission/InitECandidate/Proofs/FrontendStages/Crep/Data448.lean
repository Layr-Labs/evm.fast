import InitECandidate.Proofs.FrontendStages.Crep.Translate432
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody448_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody448_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody448_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody448_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody448_2

def crepBody448_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "u256_eq"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody448_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "stack_push_bool" [Flapjack.CrepExp.var 9]

def crepBody448_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody448_5

def crepBody448_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody448_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody448_7

def crepBody448_9 : CrepProg (BitVec 64) :=
.seq crepBody448_6 crepBody448_8

def crepBody448_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody448_11 : CrepProg (BitVec 64) :=
.seq crepBody448_9 crepBody448_10

def crepBody448_12 : CrepProg (BitVec 64) :=
.seq crepBody448_4 crepBody448_11

def crepBody448_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody448_12

def crepBody448_14 : CrepProg (BitVec 64) :=
.seq crepBody448_3 crepBody448_13

def crepBody448_15 : CrepProg (BitVec 64) :=
.seq crepBody448_1 crepBody448_14

def crepBody448_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody448_15

def crepBody448_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody448_16

def crepBody448_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody448_17

def crepBody448_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody448_18

def crepBody448_20 : CrepProg (BitVec 64) :=
.seq crepBody448_0 crepBody448_19

def crepBody448_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody448_20

def crepBody448_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody448_21

def crepBody448_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody448_22

def crepBody448_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody448_23

def data448 : CrepProg (BitVec 64) := crepBody448_24
def output448 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 101#8, 113#8], [], crepProgToHOL data448)
end InitECandidate.Proofs.FrontendStages.Crep
