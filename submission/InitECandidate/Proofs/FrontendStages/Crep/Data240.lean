import InitECandidate.Proofs.FrontendStages.Crep.Translate224
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody240_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "scratch_mark" []

def crepBody240_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody240_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody240_3 : CrepProg (BitVec 64) :=
.seq crepBody240_1 crepBody240_2

def crepBody240_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "scratch_release" [Flapjack.CrepExp.var 3]

def crepBody240_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody240_4

def crepBody240_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody240_7 : CrepProg (BitVec 64) :=
.seq crepBody240_6 crepBody240_2

def crepBody240_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody240_7

def crepBody240_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 1#64

def crepBody240_10 : CrepProg (BitVec 64) :=
.seq crepBody240_8 crepBody240_9

def crepBody240_11 : CrepProg (BitVec 64) :=
.seq crepBody240_5 crepBody240_10

def crepBody240_12 : CrepProg (BitVec 64) :=
.seq crepBody240_3 crepBody240_11

def crepBody240_13 : CrepProg (BitVec 64) :=
.call (some (([5]), some ((1#64), crepBody240_12))) ("_decode_witness_node_mpt") ([Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3])

def crepBody240_14 : CrepProg (BitVec 64) :=
.seq crepBody240_13 crepBody240_5

def crepBody240_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody240_16 : CrepProg (BitVec 64) :=
.seq crepBody240_14 crepBody240_15

def crepBody240_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody240_16

def crepBody240_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody240_17

def crepBody240_19 : CrepProg (BitVec 64) :=
.seq crepBody240_0 crepBody240_18

def crepBody240_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody240_19

def data240 : CrepProg (BitVec 64) := crepBody240_20
def output240 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8, 110#8,
    111#8, 100#8, 101#8], [0, 1, 2], crepProgToHOL data240)
end InitECandidate.Proofs.FrontendStages.Crep
