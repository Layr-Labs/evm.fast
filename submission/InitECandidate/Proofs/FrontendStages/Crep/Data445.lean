import InitECandidate.Proofs.FrontendStages.Crep.Translate429
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody445_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody445_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody445_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody445_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody445_2

def crepBody445_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "u256_gt"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody445_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "stack_push_bool" [Flapjack.CrepExp.var 9]

def crepBody445_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody445_5

def crepBody445_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody445_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody445_7

def crepBody445_9 : CrepProg (BitVec 64) :=
.seq crepBody445_6 crepBody445_8

def crepBody445_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody445_11 : CrepProg (BitVec 64) :=
.seq crepBody445_9 crepBody445_10

def crepBody445_12 : CrepProg (BitVec 64) :=
.seq crepBody445_4 crepBody445_11

def crepBody445_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody445_12

def crepBody445_14 : CrepProg (BitVec 64) :=
.seq crepBody445_3 crepBody445_13

def crepBody445_15 : CrepProg (BitVec 64) :=
.seq crepBody445_1 crepBody445_14

def crepBody445_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody445_15

def crepBody445_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody445_16

def crepBody445_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody445_17

def crepBody445_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody445_18

def crepBody445_20 : CrepProg (BitVec 64) :=
.seq crepBody445_0 crepBody445_19

def crepBody445_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody445_20

def crepBody445_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody445_21

def crepBody445_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody445_22

def crepBody445_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody445_23

def data445 : CrepProg (BitVec 64) := crepBody445_24
def output445 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 103#8, 116#8], [], crepProgToHOL data445)
end InitECandidate.Proofs.FrontendStages.Crep
