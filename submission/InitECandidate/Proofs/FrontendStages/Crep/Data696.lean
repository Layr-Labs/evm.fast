import InitECandidate.Proofs.FrontendStages.Crep.Translate680
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody696_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp6_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody696_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody696_0

def crepBody696_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "fp6_neg"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64]]

def crepBody696_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody696_2

def crepBody696_4 : CrepProg (BitVec 64) :=
.seq crepBody696_1 crepBody696_3

def crepBody696_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody696_6 : CrepProg (BitVec 64) :=
.seq crepBody696_4 crepBody696_5

def data696 : CrepProg (BitVec 64) := crepBody696_6
def output696 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 99#8, 111#8, 110#8, 106#8], [0, 1], crepProgToHOL data696)
end InitECandidate.Proofs.FrontendStages.Crep
