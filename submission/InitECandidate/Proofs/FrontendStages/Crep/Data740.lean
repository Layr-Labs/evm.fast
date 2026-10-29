import InitECandidate.Proofs.FrontendStages.Crep.Translate724
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody740_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody740_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody740_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "swu_g2" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody740_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody740_2

def crepBody740_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "iso_map_g2" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 3]

def crepBody740_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody740_4

def crepBody740_6 : CrepProg (BitVec 64) :=
.seq crepBody740_3 crepBody740_5

def crepBody740_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g2_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 1632#64],
    Flapjack.CrepExp.const 10#64]

def crepBody740_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody740_7

def crepBody740_9 : CrepProg (BitVec 64) :=
.seq crepBody740_6 crepBody740_8

def crepBody740_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody740_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody740_10

def crepBody740_12 : CrepProg (BitVec 64) :=
.seq crepBody740_9 crepBody740_11

def crepBody740_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody740_14 : CrepProg (BitVec 64) :=
.seq crepBody740_12 crepBody740_13

def crepBody740_15 : CrepProg (BitVec 64) :=
.seq crepBody740_1 crepBody740_14

def crepBody740_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody740_15

def crepBody740_17 : CrepProg (BitVec 64) :=
.seq crepBody740_0 crepBody740_16

def crepBody740_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody740_17

def data740 : CrepProg (BitVec 64) := crepBody740_18
def output740 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 50#8, 95#8, 116#8, 111#8, 95#8, 103#8, 50#8], [0, 1], crepProgToHOL data740)
end InitECandidate.Proofs.FrontendStages.Crep
