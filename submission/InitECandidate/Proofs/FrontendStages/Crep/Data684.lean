import InitECandidate.Proofs.FrontendStages.Crep.Translate668
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody684_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fp2_set_one" [Flapjack.CrepExp.var 0]

def crepBody684_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody684_0

def crepBody684_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fp2_set_zero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64]]

def crepBody684_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody684_2

def crepBody684_4 : CrepProg (BitVec 64) :=
.seq crepBody684_1 crepBody684_3

def crepBody684_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fp2_set_zero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]]

def crepBody684_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody684_5

def crepBody684_7 : CrepProg (BitVec 64) :=
.seq crepBody684_4 crepBody684_6

def crepBody684_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody684_9 : CrepProg (BitVec 64) :=
.seq crepBody684_7 crepBody684_8

def data684 : CrepProg (BitVec 64) := crepBody684_9
def output684 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8], [0], crepProgToHOL data684)
end InitECandidate.Proofs.FrontendStages.Crep
