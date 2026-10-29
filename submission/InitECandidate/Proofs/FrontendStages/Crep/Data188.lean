import InitECandidate.Proofs.FrontendStages.Crep.Translate172
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody188_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "udivmod" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody188_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "ssz_fail" [Flapjack.CrepExp.const 30#64]

def crepBody188_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody188_1

def crepBody188_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody188_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody188_2 crepBody188_3

def crepBody188_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "ssz_fail" [Flapjack.CrepExp.const 31#64]

def crepBody188_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody188_5

def crepBody188_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)) crepBody188_6 crepBody188_3

def crepBody188_8 : CrepProg (BitVec 64) :=
.seq crepBody188_4 crepBody188_7

def crepBody188_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody188_10 : CrepProg (BitVec 64) :=
.seq crepBody188_8 crepBody188_9

def crepBody188_11 : CrepProg (BitVec 64) :=
.seq crepBody188_0 crepBody188_10

def crepBody188_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody188_11

def crepBody188_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody188_12

def data188 : CrepProg (BitVec 64) := crepBody188_13
def output188 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 115#8, 122#8, 95#8, 102#8, 105#8, 120#8, 101#8, 100#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 99#8, 111#8,
    117#8, 110#8, 116#8], [0, 1, 2], crepProgToHOL data188)
end InitECandidate.Proofs.FrontendStages.Crep
