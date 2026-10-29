import InitECandidate.Proofs.FrontendStages.Crep.Translate290
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody306_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody306_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6], none)) "tx_encode_generic"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody306_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "keccak256"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 3]

def crepBody306_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody306_2

def crepBody306_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody306_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody306_4

def crepBody306_6 : CrepProg (BitVec 64) :=
.seq crepBody306_3 crepBody306_5

def crepBody306_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody306_8 : CrepProg (BitVec 64) :=
.seq crepBody306_6 crepBody306_7

def crepBody306_9 : CrepProg (BitVec 64) :=
.seq crepBody306_1 crepBody306_8

def crepBody306_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody306_9

def crepBody306_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody306_10

def crepBody306_12 : CrepProg (BitVec 64) :=
.seq crepBody306_0 crepBody306_11

def crepBody306_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody306_12

def data306 : CrepProg (BitVec 64) := crepBody306_13
def output306 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 109#8,
    111#8, 100#8, 101#8], [0, 1, 2, 3], crepProgToHOL data306)
end InitECandidate.Proofs.FrontendStages.Crep
