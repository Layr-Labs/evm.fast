import InitECandidate.Proofs.FrontendStages.Crep.Translate223
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody239_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody239_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody239_2 : CrepProg (BitVec 64) :=
.seq crepBody239_0 crepBody239_1

def crepBody239_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "scratch_release" [Flapjack.CrepExp.var 3]

def crepBody239_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody239_3

def crepBody239_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody239_6 : CrepProg (BitVec 64) :=
.seq crepBody239_5 crepBody239_1

def crepBody239_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody239_6

def crepBody239_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 5#64

def crepBody239_9 : CrepProg (BitVec 64) :=
.seq crepBody239_7 crepBody239_8

def crepBody239_10 : CrepProg (BitVec 64) :=
.seq crepBody239_4 crepBody239_9

def crepBody239_11 : CrepProg (BitVec 64) :=
.seq crepBody239_2 crepBody239_10

def crepBody239_12 : CrepProg (BitVec 64) :=
.call (some (([5]), some ((5#64), crepBody239_11))) ("_decode_witness_node_body") ([Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])

def crepBody239_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody239_14 : CrepProg (BitVec 64) :=
.seq crepBody239_12 crepBody239_13

def crepBody239_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody239_14

def crepBody239_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody239_15

def data239 : CrepProg (BitVec 64) := crepBody239_16
def output239 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8, 110#8,
    111#8, 100#8, 101#8, 95#8, 109#8, 112#8, 116#8], [0, 1, 2, 3], crepProgToHOL data239)
end InitECandidate.Proofs.FrontendStages.Crep
