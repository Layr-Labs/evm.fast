import InitECandidate.Proofs.FrontendStages.Crep.Translate82
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody98_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "rlp_item" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody98_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "rlp_fail" [Flapjack.CrepExp.const 6#64]

def crepBody98_2 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody98_1

def crepBody98_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody98_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 1)) crepBody98_2 crepBody98_3

def crepBody98_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody98_6 : CrepProg (BitVec 64) :=
.seq crepBody98_4 crepBody98_5

def crepBody98_7 : CrepProg (BitVec 64) :=
.seq crepBody98_0 crepBody98_6

def crepBody98_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody98_7

def crepBody98_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody98_8

def crepBody98_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody98_9

def crepBody98_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody98_10

def data98 : CrepProg (BitVec 64) := crepBody98_11
def output98 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 102#8, 117#8, 108#8, 108#8, 121#8], [0, 1], crepProgToHOL data98)
end InitECandidate.Proofs.FrontendStages.Crep
