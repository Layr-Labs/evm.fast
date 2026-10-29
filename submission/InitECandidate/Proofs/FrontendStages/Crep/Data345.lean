import InitECandidate.Proofs.FrontendStages.Crep.Translate329
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody345_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "htab_get" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody345_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody345_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody345_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody345_1 crepBody345_2

def crepBody345_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6], none)) "htab_get" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody345_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody345_6 : CrepProg (BitVec 64) :=
.seq crepBody345_4 crepBody345_5

def crepBody345_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody345_6

def crepBody345_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody345_7

def crepBody345_9 : CrepProg (BitVec 64) :=
.seq crepBody345_3 crepBody345_8

def crepBody345_10 : CrepProg (BitVec 64) :=
.seq crepBody345_0 crepBody345_9

def crepBody345_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody345_10

def crepBody345_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody345_11

def data345 : CrepProg (BitVec 64) := crepBody345_12
def output345 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 116#8, 111#8, 114#8, 95#8, 108#8, 111#8, 111#8, 107#8, 117#8, 112#8], [0, 1, 2], crepProgToHOL data345)
end InitECandidate.Proofs.FrontendStages.Crep
