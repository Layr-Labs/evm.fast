import InitECandidate.Proofs.FrontendStages.Crep.Translate435
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody451_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody451_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody451_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody451_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody451_2

def crepBody451_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "stack_push"
  [Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5],
    Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 6],
    Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 8]]

def crepBody451_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody451_4

def crepBody451_6 : CrepProg (BitVec 64) :=
.seq crepBody451_3 crepBody451_5

def crepBody451_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody451_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody451_7

def crepBody451_9 : CrepProg (BitVec 64) :=
.seq crepBody451_6 crepBody451_8

def crepBody451_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody451_11 : CrepProg (BitVec 64) :=
.seq crepBody451_9 crepBody451_10

def crepBody451_12 : CrepProg (BitVec 64) :=
.seq crepBody451_1 crepBody451_11

def crepBody451_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody451_12

def crepBody451_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody451_13

def crepBody451_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody451_14

def crepBody451_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody451_15

def crepBody451_17 : CrepProg (BitVec 64) :=
.seq crepBody451_0 crepBody451_16

def crepBody451_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody451_17

def crepBody451_19 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody451_18

def crepBody451_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody451_19

def crepBody451_21 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody451_20

def data451 : CrepProg (BitVec 64) := crepBody451_21
def output451 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 111#8, 114#8], [], crepProgToHOL data451)
end InitECandidate.Proofs.FrontendStages.Crep
