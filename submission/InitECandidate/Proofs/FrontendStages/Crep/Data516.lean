import InitECandidate.Proofs.FrontendStages.Crep.Translate500
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody516_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody516_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody516_0

def crepBody516_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "block_env" []

def crepBody516_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "stack_push_word"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])]

def crepBody516_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody516_3

def crepBody516_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody516_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody516_5

def crepBody516_7 : CrepProg (BitVec 64) :=
.seq crepBody516_4 crepBody516_6

def crepBody516_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody516_9 : CrepProg (BitVec 64) :=
.seq crepBody516_7 crepBody516_8

def crepBody516_10 : CrepProg (BitVec 64) :=
.seq crepBody516_2 crepBody516_9

def crepBody516_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody516_10

def crepBody516_12 : CrepProg (BitVec 64) :=
.seq crepBody516_1 crepBody516_11

def data516 : CrepProg (BitVec 64) := crepBody516_12
def output516 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 103#8, 97#8, 115#8, 108#8, 105#8, 109#8, 105#8, 116#8], [], crepProgToHOL data516)
end InitECandidate.Proofs.FrontendStages.Crep
