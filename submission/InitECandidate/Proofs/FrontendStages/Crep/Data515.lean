import InitECandidate.Proofs.FrontendStages.Crep.Translate499
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody515_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody515_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody515_0

def crepBody515_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "block_env" []

def crepBody515_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "stack_push_word"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])]

def crepBody515_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody515_3

def crepBody515_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody515_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody515_5

def crepBody515_7 : CrepProg (BitVec 64) :=
.seq crepBody515_4 crepBody515_6

def crepBody515_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody515_9 : CrepProg (BitVec 64) :=
.seq crepBody515_7 crepBody515_8

def crepBody515_10 : CrepProg (BitVec 64) :=
.seq crepBody515_2 crepBody515_9

def crepBody515_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody515_10

def crepBody515_12 : CrepProg (BitVec 64) :=
.seq crepBody515_1 crepBody515_11

def data515 : CrepProg (BitVec 64) := crepBody515_12
def output515 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 110#8, 117#8, 109#8, 98#8, 101#8, 114#8], [], crepProgToHOL data515)
end InitECandidate.Proofs.FrontendStages.Crep
