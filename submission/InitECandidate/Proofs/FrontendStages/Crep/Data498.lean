import InitECandidate.Proofs.FrontendStages.Crep.Translate482
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody498_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody498_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody498_0

def crepBody498_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "stack_push_word"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 56#64])]

def crepBody498_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody498_2

def crepBody498_4 : CrepProg (BitVec 64) :=
.seq crepBody498_1 crepBody498_3

def crepBody498_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody498_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody498_5

def crepBody498_7 : CrepProg (BitVec 64) :=
.seq crepBody498_4 crepBody498_6

def crepBody498_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody498_9 : CrepProg (BitVec 64) :=
.seq crepBody498_7 crepBody498_8

def data498 : CrepProg (BitVec 64) := crepBody498_9
def output498 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 99#8, 111#8, 100#8, 101#8, 115#8, 105#8, 122#8, 101#8], [], crepProgToHOL data498)
end InitECandidate.Proofs.FrontendStages.Crep
