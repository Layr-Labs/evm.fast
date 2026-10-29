import InitECandidate.Proofs.FrontendStages.Crep.Translate713
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody729_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "heap_mark" []

def crepBody729_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody729_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 3#64]]

def crepBody729_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fp2_copy" [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 13]

def crepBody729_4 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody729_3

def crepBody729_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 96#64]]

def crepBody729_6 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody729_5

def crepBody729_7 : CrepProg (BitVec 64) :=
.seq crepBody729_4 crepBody729_6

def crepBody729_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fp2_set_one"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 192#64]]

def crepBody729_9 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody729_8

def crepBody729_10 : CrepProg (BitVec 64) :=
.seq crepBody729_7 crepBody729_9

def crepBody729_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "fp12_set_one" [Flapjack.CrepExp.var 0]

def crepBody729_12 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody729_11

def crepBody729_13 : CrepProg (BitVec 64) :=
.seq crepBody729_10 crepBody729_12

def crepBody729_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 19)

def crepBody729_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody729_16 : CrepProg (BitVec 64) :=
.seq crepBody729_14 crepBody729_15

def crepBody729_17 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 1#64]) crepBody729_16

def crepBody729_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp12_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0]

def crepBody729_19 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody729_18

def crepBody729_20 : CrepProg (BitVec 64) :=
.seq crepBody729_17 crepBody729_19

def crepBody729_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "pair_doubling_step" [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody729_22 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody729_21

def crepBody729_23 : CrepProg (BitVec 64) :=
.seq crepBody729_20 crepBody729_22

def crepBody729_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "pair_ell"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody729_25 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody729_24

def crepBody729_26 : CrepProg (BitVec 64) :=
.seq crepBody729_23 crepBody729_25

def crepBody729_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "pair_addition_step"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 16]

def crepBody729_28 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody729_27

def crepBody729_29 : CrepProg (BitVec 64) :=
.seq crepBody729_28 crepBody729_25

def crepBody729_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 18),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody729_29 crepBody729_15

def crepBody729_31 : CrepProg (BitVec 64) :=
.seq crepBody729_26 crepBody729_30

def crepBody729_32 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 18)) crepBody729_31

def crepBody729_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp12_conj" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0]

def crepBody729_34 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody729_33

def crepBody729_35 : CrepProg (BitVec 64) :=
.seq crepBody729_32 crepBody729_34

def crepBody729_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "heap_release" [Flapjack.CrepExp.var 14]

def crepBody729_37 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody729_36

def crepBody729_38 : CrepProg (BitVec 64) :=
.seq crepBody729_35 crepBody729_37

def crepBody729_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody729_40 : CrepProg (BitVec 64) :=
.seq crepBody729_38 crepBody729_39

def crepBody729_41 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 63#64) crepBody729_40

def crepBody729_42 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
      Flapjack.CrepExp.const 1376#64])) crepBody729_41

def crepBody729_43 : CrepProg (BitVec 64) :=
.seq crepBody729_13 crepBody729_42

def crepBody729_44 : CrepProg (BitVec 64) :=
.seq crepBody729_2 crepBody729_43

def crepBody729_45 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody729_44

def crepBody729_46 : CrepProg (BitVec 64) :=
.seq crepBody729_1 crepBody729_45

def crepBody729_47 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody729_46

def crepBody729_48 : CrepProg (BitVec 64) :=
.seq crepBody729_0 crepBody729_47

def crepBody729_49 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody729_48

def data729 : CrepProg (BitVec 64) := crepBody729_49
def output729 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 97#8, 105#8, 114#8, 95#8, 109#8, 105#8, 108#8, 108#8, 101#8, 114#8, 95#8, 108#8, 111#8, 111#8, 112#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], crepProgToHOL data729)
end InitECandidate.Proofs.FrontendStages.Crep
