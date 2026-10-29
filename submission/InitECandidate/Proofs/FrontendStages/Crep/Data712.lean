import InitECandidate.Proofs.FrontendStages.Crep.Translate696
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody712_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody712_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody712_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g1_normalize" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 0]

def crepBody712_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody712_2

def crepBody712_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_fp_encode64" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody712_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody712_4

def crepBody712_6 : CrepProg (BitVec 64) :=
.seq crepBody712_3 crepBody712_5

def crepBody712_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_fp_encode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]]

def crepBody712_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody712_7

def crepBody712_9 : CrepProg (BitVec 64) :=
.seq crepBody712_6 crepBody712_8

def crepBody712_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody712_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody712_10

def crepBody712_12 : CrepProg (BitVec 64) :=
.seq crepBody712_9 crepBody712_11

def crepBody712_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody712_14 : CrepProg (BitVec 64) :=
.seq crepBody712_12 crepBody712_13

def crepBody712_15 : CrepProg (BitVec 64) :=
.seq crepBody712_1 crepBody712_14

def crepBody712_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody712_15

def crepBody712_17 : CrepProg (BitVec 64) :=
.seq crepBody712_0 crepBody712_16

def crepBody712_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody712_17

def data712 : CrepProg (BitVec 64) := crepBody712_18
def output712 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8], [0, 1], crepProgToHOL data712)
end InitECandidate.Proofs.FrontendStages.Crep
