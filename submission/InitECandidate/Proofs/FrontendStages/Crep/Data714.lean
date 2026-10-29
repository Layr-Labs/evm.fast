import InitECandidate.Proofs.FrontendStages.Crep.Translate698
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody714_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fp2_set_one" [Flapjack.CrepExp.var 0]

def crepBody714_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody714_0

def crepBody714_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fp2_set_one"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64]]

def crepBody714_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody714_2

def crepBody714_4 : CrepProg (BitVec 64) :=
.seq crepBody714_1 crepBody714_3

def crepBody714_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fp2_set_zero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]]

def crepBody714_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody714_5

def crepBody714_7 : CrepProg (BitVec 64) :=
.seq crepBody714_4 crepBody714_6

def crepBody714_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody714_9 : CrepProg (BitVec 64) :=
.seq crepBody714_7 crepBody714_8

def data714 : CrepProg (BitVec 64) := crepBody714_9
def output714 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8], [0], crepProgToHOL data714)
end InitECandidate.Proofs.FrontendStages.Crep
