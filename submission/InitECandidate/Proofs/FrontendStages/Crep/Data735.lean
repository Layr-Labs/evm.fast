import InitECandidate.Proofs.FrontendStages.Crep.Translate719
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody735_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody735_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody735_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "swu_g1"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody735_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody735_2

def crepBody735_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "iso_map_g1" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8]

def crepBody735_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody735_4

def crepBody735_6 : CrepProg (BitVec 64) :=
.seq crepBody735_3 crepBody735_5

def crepBody735_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g1_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 1624#64],
    Flapjack.CrepExp.const 1#64]

def crepBody735_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody735_7

def crepBody735_9 : CrepProg (BitVec 64) :=
.seq crepBody735_6 crepBody735_8

def crepBody735_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody735_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody735_10

def crepBody735_12 : CrepProg (BitVec 64) :=
.seq crepBody735_9 crepBody735_11

def crepBody735_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody735_14 : CrepProg (BitVec 64) :=
.seq crepBody735_12 crepBody735_13

def crepBody735_15 : CrepProg (BitVec 64) :=
.seq crepBody735_1 crepBody735_14

def crepBody735_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody735_15

def crepBody735_17 : CrepProg (BitVec 64) :=
.seq crepBody735_0 crepBody735_16

def crepBody735_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody735_17

def data735 : CrepProg (BitVec 64) := crepBody735_18
def output735 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 103#8, 49#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data735)
end InitECandidate.Proofs.FrontendStages.Crep
