import InitECandidate.Proofs.FrontendStages.Crep.Translate705
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody721_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody721_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody721_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g2_is_inf" [Flapjack.CrepExp.var 1]

def crepBody721_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memzero" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]

def crepBody721_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody721_3

def crepBody721_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody721_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody721_5

def crepBody721_7 : CrepProg (BitVec 64) :=
.seq crepBody721_4 crepBody721_6

def crepBody721_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody721_9 : CrepProg (BitVec 64) :=
.seq crepBody721_7 crepBody721_8

def crepBody721_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody721_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody721_9 crepBody721_10

def crepBody721_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_inv"
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody721_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody721_12

def crepBody721_14 : CrepProg (BitVec 64) :=
.seq crepBody721_11 crepBody721_13

def crepBody721_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody721_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody721_15

def crepBody721_17 : CrepProg (BitVec 64) :=
.seq crepBody721_14 crepBody721_16

def crepBody721_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 3]

def crepBody721_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody721_18

def crepBody721_20 : CrepProg (BitVec 64) :=
.seq crepBody721_17 crepBody721_19

def crepBody721_21 : CrepProg (BitVec 64) :=
.seq crepBody721_20 crepBody721_6

def crepBody721_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody721_23 : CrepProg (BitVec 64) :=
.seq crepBody721_21 crepBody721_22

def crepBody721_24 : CrepProg (BitVec 64) :=
.seq crepBody721_2 crepBody721_23

def crepBody721_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody721_24

def crepBody721_26 : CrepProg (BitVec 64) :=
.seq crepBody721_1 crepBody721_25

def crepBody721_27 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody721_26

def crepBody721_28 : CrepProg (BitVec 64) :=
.seq crepBody721_0 crepBody721_27

def crepBody721_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody721_28

def data721 : CrepProg (BitVec 64) := crepBody721_29
def output721 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 50#8, 95#8, 110#8, 111#8, 114#8, 109#8, 97#8, 108#8, 105#8, 122#8, 101#8], [0, 1], crepProgToHOL data721)
end InitECandidate.Proofs.FrontendStages.Crep
