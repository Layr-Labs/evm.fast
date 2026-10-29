import InitECandidate.Proofs.FrontendStages.Crep.Translate465
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody481_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "lst_push"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.const 8#64]

def crepBody481_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody481_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody481_3 : CrepProg (BitVec 64) :=
.seq crepBody481_1 crepBody481_2

def crepBody481_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 1) crepBody481_3

def crepBody481_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 2) crepBody481_4

def crepBody481_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody481_7 : CrepProg (BitVec 64) :=
.seq crepBody481_5 crepBody481_6

def crepBody481_8 : CrepProg (BitVec 64) :=
.seq crepBody481_0 crepBody481_7

def crepBody481_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody481_8

def data481 : CrepProg (BitVec 64) := crepBody481_9
def output481 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 111#8, 103#8, 95#8, 97#8, 112#8, 112#8, 101#8, 110#8, 100#8], [0, 1], crepProgToHOL data481)
end InitECandidate.Proofs.FrontendStages.Crep
