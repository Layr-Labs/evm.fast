import InitECandidate.Proofs.FrontendStages.Crep.Translate85
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody101_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "scratch_mark" []

def crepBody101_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody101_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody101_3 : CrepProg (BitVec 64) :=
.seq crepBody101_1 crepBody101_2

def crepBody101_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "scratch_release" [Flapjack.CrepExp.var 2]

def crepBody101_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody101_4

def crepBody101_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 4)

def crepBody101_7 : CrepProg (BitVec 64) :=
.seq crepBody101_6 crepBody101_2

def crepBody101_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody101_7

def crepBody101_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 1#64

def crepBody101_10 : CrepProg (BitVec 64) :=
.seq crepBody101_8 crepBody101_9

def crepBody101_11 : CrepProg (BitVec 64) :=
.seq crepBody101_5 crepBody101_10

def crepBody101_12 : CrepProg (BitVec 64) :=
.seq crepBody101_3 crepBody101_11

def crepBody101_13 : CrepProg (BitVec 64) :=
.call (some (([4]), some ((1#64), crepBody101_12))) ("_rlp_validate_items_body") ([Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1])

def crepBody101_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody101_13

def crepBody101_15 : CrepProg (BitVec 64) :=
.seq crepBody101_14 crepBody101_5

def crepBody101_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody101_17 : CrepProg (BitVec 64) :=
.seq crepBody101_15 crepBody101_16

def crepBody101_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody101_17

def crepBody101_19 : CrepProg (BitVec 64) :=
.seq crepBody101_0 crepBody101_18

def crepBody101_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody101_19

def data101 : CrepProg (BitVec 64) := crepBody101_20
def output101 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 105#8, 116#8, 101#8, 109#8,
    115#8], [0, 1], crepProgToHOL data101)
end InitECandidate.Proofs.FrontendStages.Crep
