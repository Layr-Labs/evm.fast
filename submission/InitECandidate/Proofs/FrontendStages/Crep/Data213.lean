import InitECandidate.Proofs.FrontendStages.Crep.Translate197
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody213_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody213_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "encode_header" [Flapjack.CrepExp.var 0]

def crepBody213_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "keccak256"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1]

def crepBody213_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody213_2

def crepBody213_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody213_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody213_4

def crepBody213_6 : CrepProg (BitVec 64) :=
.seq crepBody213_3 crepBody213_5

def crepBody213_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody213_8 : CrepProg (BitVec 64) :=
.seq crepBody213_6 crepBody213_7

def crepBody213_9 : CrepProg (BitVec 64) :=
.seq crepBody213_1 crepBody213_8

def crepBody213_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody213_9

def crepBody213_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody213_10

def crepBody213_12 : CrepProg (BitVec 64) :=
.seq crepBody213_0 crepBody213_11

def crepBody213_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody213_12

def data213 : CrepProg (BitVec 64) := crepBody213_13
def output213 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8, 104#8, 97#8, 115#8, 104#8], [0, 1], crepProgToHOL data213)
end InitECandidate.Proofs.FrontendStages.Crep
