import InitECandidate.Proofs.FrontendStages.Crep.Translate497
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody513_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody513_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody513_0

def crepBody513_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "block_env" []

def crepBody513_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "address_to_u256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])]

def crepBody513_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "stack_push"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody513_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody513_4

def crepBody513_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody513_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody513_6

def crepBody513_8 : CrepProg (BitVec 64) :=
.seq crepBody513_5 crepBody513_7

def crepBody513_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody513_10 : CrepProg (BitVec 64) :=
.seq crepBody513_8 crepBody513_9

def crepBody513_11 : CrepProg (BitVec 64) :=
.seq crepBody513_3 crepBody513_10

def crepBody513_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody513_11

def crepBody513_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody513_12

def crepBody513_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody513_13

def crepBody513_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody513_14

def crepBody513_16 : CrepProg (BitVec 64) :=
.seq crepBody513_2 crepBody513_15

def crepBody513_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody513_16

def crepBody513_18 : CrepProg (BitVec 64) :=
.seq crepBody513_1 crepBody513_17

def data513 : CrepProg (BitVec 64) := crepBody513_18
def output513 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 111#8, 105#8, 110#8, 98#8, 97#8, 115#8, 101#8], [], crepProgToHOL data513)
end InitECandidate.Proofs.FrontendStages.Crep
