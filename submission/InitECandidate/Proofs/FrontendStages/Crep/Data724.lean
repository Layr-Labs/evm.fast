import InitECandidate.Proofs.FrontendStages.Crep.Translate708
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody724_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody724_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 192#64]

def crepBody724_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g2_normalize" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 0]

def crepBody724_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody724_2

def crepBody724_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_fp_encode64" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody724_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody724_4

def crepBody724_6 : CrepProg (BitVec 64) :=
.seq crepBody724_3 crepBody724_5

def crepBody724_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_fp_encode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]]

def crepBody724_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody724_7

def crepBody724_9 : CrepProg (BitVec 64) :=
.seq crepBody724_6 crepBody724_8

def crepBody724_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_fp_encode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 128#64]]

def crepBody724_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody724_10

def crepBody724_12 : CrepProg (BitVec 64) :=
.seq crepBody724_9 crepBody724_11

def crepBody724_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_fp_encode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 144#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody724_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody724_13

def crepBody724_15 : CrepProg (BitVec 64) :=
.seq crepBody724_12 crepBody724_14

def crepBody724_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody724_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody724_16

def crepBody724_18 : CrepProg (BitVec 64) :=
.seq crepBody724_15 crepBody724_17

def crepBody724_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody724_20 : CrepProg (BitVec 64) :=
.seq crepBody724_18 crepBody724_19

def crepBody724_21 : CrepProg (BitVec 64) :=
.seq crepBody724_1 crepBody724_20

def crepBody724_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody724_21

def crepBody724_23 : CrepProg (BitVec 64) :=
.seq crepBody724_0 crepBody724_22

def crepBody724_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody724_23

def data724 : CrepProg (BitVec 64) := crepBody724_24
def output724 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8], [0, 1], crepProgToHOL data724)
end InitECandidate.Proofs.FrontendStages.Crep
