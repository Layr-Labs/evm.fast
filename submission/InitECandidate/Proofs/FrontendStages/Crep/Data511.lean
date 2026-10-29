import InitECandidate.Proofs.FrontendStages.Crep.Translate495
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody511_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody511_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody511_0

def crepBody511_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "block_env" []

def crepBody511_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "calculate_blob_gas_price"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])]

def crepBody511_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "stack_push"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody511_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody511_4

def crepBody511_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody511_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody511_6

def crepBody511_8 : CrepProg (BitVec 64) :=
.seq crepBody511_5 crepBody511_7

def crepBody511_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody511_10 : CrepProg (BitVec 64) :=
.seq crepBody511_8 crepBody511_9

def crepBody511_11 : CrepProg (BitVec 64) :=
.seq crepBody511_3 crepBody511_10

def crepBody511_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody511_11

def crepBody511_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody511_12

def crepBody511_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody511_13

def crepBody511_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody511_14

def crepBody511_16 : CrepProg (BitVec 64) :=
.seq crepBody511_2 crepBody511_15

def crepBody511_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody511_16

def crepBody511_18 : CrepProg (BitVec 64) :=
.seq crepBody511_1 crepBody511_17

def data511 : CrepProg (BitVec 64) := crepBody511_18
def output511 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 98#8, 108#8, 111#8, 98#8, 98#8, 97#8, 115#8, 101#8, 102#8, 101#8, 101#8], [], crepProgToHOL data511)
end InitECandidate.Proofs.FrontendStages.Crep
