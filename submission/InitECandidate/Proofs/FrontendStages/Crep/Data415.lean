import InitECandidate.Proofs.FrontendStages.Crep.Translate399
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody415_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "words_of" [Flapjack.CrepExp.var 0]

def crepBody415_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "mul64x64" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1]

def crepBody415_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody415_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody415_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody415_2 crepBody415_3

def crepBody415_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "add_sat"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 3#64],
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 9#64)]

def crepBody415_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody415_7 : CrepProg (BitVec 64) :=
.seq crepBody415_5 crepBody415_6

def crepBody415_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody415_7

def crepBody415_9 : CrepProg (BitVec 64) :=
.seq crepBody415_4 crepBody415_8

def crepBody415_10 : CrepProg (BitVec 64) :=
.seq crepBody415_1 crepBody415_9

def crepBody415_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody415_10

def crepBody415_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody415_11

def crepBody415_13 : CrepProg (BitVec 64) :=
.seq crepBody415_0 crepBody415_12

def crepBody415_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody415_13

def data415 : CrepProg (BitVec 64) := crepBody415_14
def output415 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 101#8, 109#8, 111#8, 114#8, 121#8, 95#8, 103#8, 97#8, 115#8, 95#8, 99#8, 111#8, 115#8, 116#8], [0], crepProgToHOL data415)
end InitECandidate.Proofs.FrontendStages.Crep
