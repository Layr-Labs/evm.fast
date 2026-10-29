import InitECandidate.Proofs.FrontendStages.Crep.Translate50
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody66_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11, 12, 13, 14, 15], none)) "u256_divmod"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody66_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody66_2 : CrepProg (BitVec 64) :=
.seq crepBody66_0 crepBody66_1

def crepBody66_3 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody66_2

def crepBody66_4 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody66_3

def crepBody66_5 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody66_4

def crepBody66_6 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody66_5

def crepBody66_7 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody66_6

def crepBody66_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody66_7

def crepBody66_9 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody66_8

def crepBody66_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody66_9

def data66 : CrepProg (BitVec 64) := crepBody66_10
def output66 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 100#8, 105#8, 118#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data66)
end InitECandidate.Proofs.FrontendStages.Crep
