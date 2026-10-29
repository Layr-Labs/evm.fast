import InitECandidate.Proofs.FrontendStages.Crep.Translate706
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody722_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody722_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody722_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody722_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_sqr" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody722_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody722_3

def crepBody722_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_sqr" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 0]

def crepBody722_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody722_5

def crepBody722_7 : CrepProg (BitVec 64) :=
.seq crepBody722_4 crepBody722_6

def crepBody722_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 0]

def crepBody722_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody722_8

def crepBody722_10 : CrepProg (BitVec 64) :=
.seq crepBody722_7 crepBody722_9

def crepBody722_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_add"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 288#64]]

def crepBody722_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody722_11

def crepBody722_13 : CrepProg (BitVec 64) :=
.seq crepBody722_10 crepBody722_12

def crepBody722_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_eq" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody722_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody722_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody722_15

def crepBody722_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody722_18 : CrepProg (BitVec 64) :=
.seq crepBody722_16 crepBody722_17

def crepBody722_19 : CrepProg (BitVec 64) :=
.seq crepBody722_14 crepBody722_18

def crepBody722_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody722_19

def crepBody722_21 : CrepProg (BitVec 64) :=
.seq crepBody722_13 crepBody722_20

def crepBody722_22 : CrepProg (BitVec 64) :=
.seq crepBody722_2 crepBody722_21

def crepBody722_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody722_22

def crepBody722_24 : CrepProg (BitVec 64) :=
.seq crepBody722_1 crepBody722_23

def crepBody722_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody722_24

def crepBody722_26 : CrepProg (BitVec 64) :=
.seq crepBody722_0 crepBody722_25

def crepBody722_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody722_26

def data722 : CrepProg (BitVec 64) := crepBody722_27
def output722 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 111#8, 110#8, 95#8, 99#8, 117#8, 114#8, 118#8, 101#8], [0, 1], crepProgToHOL data722)
end InitECandidate.Proofs.FrontendStages.Crep
