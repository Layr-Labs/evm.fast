import InitECandidate.Proofs.FrontendStages.Crep.Translate488
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody504_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody504_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody504_0

def crepBody504_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "stack_push_word"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 152#64])]

def crepBody504_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody504_2

def crepBody504_4 : CrepProg (BitVec 64) :=
.seq crepBody504_1 crepBody504_3

def crepBody504_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody504_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody504_5

def crepBody504_7 : CrepProg (BitVec 64) :=
.seq crepBody504_4 crepBody504_6

def crepBody504_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody504_9 : CrepProg (BitVec 64) :=
.seq crepBody504_7 crepBody504_8

def data504 : CrepProg (BitVec 64) := crepBody504_9
def output504 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 114#8, 101#8, 116#8, 117#8, 114#8, 110#8, 100#8, 97#8, 116#8, 97#8, 115#8, 105#8, 122#8, 101#8], [], crepProgToHOL data504)
end InitECandidate.Proofs.FrontendStages.Crep
