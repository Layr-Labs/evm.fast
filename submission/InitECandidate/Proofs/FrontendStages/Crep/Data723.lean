import InitECandidate.Proofs.FrontendStages.Crep.Translate707
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody723_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bls_fp_decode64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody723_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody723_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody723_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody723_1 crepBody723_2

def crepBody723_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bls_fp_decode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]]

def crepBody723_5 : CrepProg (BitVec 64) :=
.seq crepBody723_3 crepBody723_4

def crepBody723_6 : CrepProg (BitVec 64) :=
.seq crepBody723_5 crepBody723_3

def crepBody723_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bls_fp_decode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody723_8 : CrepProg (BitVec 64) :=
.seq crepBody723_6 crepBody723_7

def crepBody723_9 : CrepProg (BitVec 64) :=
.seq crepBody723_8 crepBody723_3

def crepBody723_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bls_fp_decode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 48#64]]

def crepBody723_11 : CrepProg (BitVec 64) :=
.seq crepBody723_9 crepBody723_10

def crepBody723_12 : CrepProg (BitVec 64) :=
.seq crepBody723_11 crepBody723_3

def crepBody723_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fp2_is_zero" [Flapjack.CrepExp.var 1]

def crepBody723_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fp2_is_zero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody723_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_set_zero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody723_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody723_15

def crepBody723_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody723_18 : CrepProg (BitVec 64) :=
.seq crepBody723_16 crepBody723_17

def crepBody723_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64))]) crepBody723_18 crepBody723_2

def crepBody723_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fp2_set_one"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody723_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody723_20

def crepBody723_22 : CrepProg (BitVec 64) :=
.seq crepBody723_19 crepBody723_21

def crepBody723_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "g2_on_curve"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody723_24 : CrepProg (BitVec 64) :=
.seq crepBody723_22 crepBody723_23

def crepBody723_25 : CrepProg (BitVec 64) :=
.seq crepBody723_14 crepBody723_24

def crepBody723_26 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody723_25

def crepBody723_27 : CrepProg (BitVec 64) :=
.seq crepBody723_13 crepBody723_26

def crepBody723_28 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody723_27

def crepBody723_29 : CrepProg (BitVec 64) :=
.seq crepBody723_12 crepBody723_28

def crepBody723_30 : CrepProg (BitVec 64) :=
.seq crepBody723_0 crepBody723_29

def crepBody723_31 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody723_30

def data723 : CrepProg (BitVec 64) := crepBody723_31
def output723 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8], [0, 1], crepProgToHOL data723)
end InitECandidate.Proofs.FrontendStages.Crep
