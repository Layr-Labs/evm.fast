import InitECandidate.Proofs.FrontendStages.Crep.Translate673
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody689_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody689_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody689_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fp2_mul_xi"
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody689_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody689_2

def crepBody689_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody689_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody689_4

def crepBody689_6 : CrepProg (BitVec 64) :=
.seq crepBody689_3 crepBody689_5

def crepBody689_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 1]

def crepBody689_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody689_7

def crepBody689_9 : CrepProg (BitVec 64) :=
.seq crepBody689_6 crepBody689_8

def crepBody689_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody689_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody689_10

def crepBody689_12 : CrepProg (BitVec 64) :=
.seq crepBody689_9 crepBody689_11

def crepBody689_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody689_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody689_13

def crepBody689_15 : CrepProg (BitVec 64) :=
.seq crepBody689_12 crepBody689_14

def crepBody689_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody689_17 : CrepProg (BitVec 64) :=
.seq crepBody689_15 crepBody689_16

def crepBody689_18 : CrepProg (BitVec 64) :=
.seq crepBody689_1 crepBody689_17

def crepBody689_19 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody689_18

def crepBody689_20 : CrepProg (BitVec 64) :=
.seq crepBody689_0 crepBody689_19

def crepBody689_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody689_20

def data689 : CrepProg (BitVec 64) := crepBody689_21
def output689 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 109#8, 117#8, 108#8, 95#8, 118#8], [0, 1], crepProgToHOL data689)
end InitECandidate.Proofs.FrontendStages.Crep
