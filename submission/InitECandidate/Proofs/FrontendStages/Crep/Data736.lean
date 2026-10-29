import InitECandidate.Proofs.FrontendStages.Crep.Translate720
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody736_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody736_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 6#64]]

def crepBody736_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "fp2_copy" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody736_3 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody736_2

def crepBody736_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody736_5 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_4

def crepBody736_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 12)

def crepBody736_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody736_8 : CrepProg (BitVec 64) :=
.seq crepBody736_6 crepBody736_7

def crepBody736_9 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody736_8

def crepBody736_10 : CrepProg (BitVec 64) :=
.seq crepBody736_5 crepBody736_9

def crepBody736_11 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 6#64)) crepBody736_10

def crepBody736_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5]

def crepBody736_13 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_12

def crepBody736_14 : CrepProg (BitVec 64) :=
.seq crepBody736_11 crepBody736_13

def crepBody736_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody736_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_15

def crepBody736_17 : CrepProg (BitVec 64) :=
.seq crepBody736_14 crepBody736_16

def crepBody736_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody736_19 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_18

def crepBody736_20 : CrepProg (BitVec 64) :=
.seq crepBody736_17 crepBody736_19

def crepBody736_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_pow"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 1528#64],
    Flapjack.CrepExp.const 12#64]

def crepBody736_22 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_21

def crepBody736_23 : CrepProg (BitVec 64) :=
.seq crepBody736_20 crepBody736_22

def crepBody736_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6]

def crepBody736_25 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_24

def crepBody736_26 : CrepProg (BitVec 64) :=
.seq crepBody736_23 crepBody736_25

def crepBody736_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8]

def crepBody736_28 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_27

def crepBody736_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.const 0#64)

def crepBody736_30 : CrepProg (BitVec 64) :=
.seq crepBody736_29 crepBody736_7

def crepBody736_31 : CrepProg (BitVec 64) :=
.seq crepBody736_28 crepBody736_30

def crepBody736_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "fp2_mul"
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 5216#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 96#64]],
    Flapjack.CrepExp.var 8]

def crepBody736_33 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_32

def crepBody736_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "fp2_sqr" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]

def crepBody736_35 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_34

def crepBody736_36 : CrepProg (BitVec 64) :=
.seq crepBody736_33 crepBody736_35

def crepBody736_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "fp2_mul"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 2]

def crepBody736_38 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_37

def crepBody736_39 : CrepProg (BitVec 64) :=
.seq crepBody736_36 crepBody736_38

def crepBody736_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "fp2_sub"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 1]

def crepBody736_41 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_40

def crepBody736_42 : CrepProg (BitVec 64) :=
.seq crepBody736_39 crepBody736_41

def crepBody736_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "fp2_is_zero" [Flapjack.CrepExp.var 10]

def crepBody736_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.const 1#64)

def crepBody736_45 : CrepProg (BitVec 64) :=
.seq crepBody736_44 crepBody736_7

def crepBody736_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9]

def crepBody736_47 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody736_46

def crepBody736_48 : CrepProg (BitVec 64) :=
.seq crepBody736_45 crepBody736_47

def crepBody736_49 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64))]) crepBody736_48 crepBody736_7

def crepBody736_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 14)

def crepBody736_51 : CrepProg (BitVec 64) :=
.seq crepBody736_50 crepBody736_7

def crepBody736_52 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody736_51

def crepBody736_53 : CrepProg (BitVec 64) :=
.seq crepBody736_49 crepBody736_52

def crepBody736_54 : CrepProg (BitVec 64) :=
.seq crepBody736_43 crepBody736_53

def crepBody736_55 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_54

def crepBody736_56 : CrepProg (BitVec 64) :=
.seq crepBody736_42 crepBody736_55

def crepBody736_57 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 4#64)) crepBody736_56

def crepBody736_58 : CrepProg (BitVec 64) :=
.seq crepBody736_31 crepBody736_57

def crepBody736_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody736_60 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody736_59

def crepBody736_61 : CrepProg (BitVec 64) :=
.seq crepBody736_58 crepBody736_60

def crepBody736_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 12]

def crepBody736_63 : CrepProg (BitVec 64) :=
.seq crepBody736_61 crepBody736_62

def crepBody736_64 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody736_63

def crepBody736_65 : CrepProg (BitVec 64) :=
.seq crepBody736_26 crepBody736_64

def crepBody736_66 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody736_65

def crepBody736_67 : CrepProg (BitVec 64) :=
.seq crepBody736_3 crepBody736_66

def crepBody736_68 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 480#64]) crepBody736_67

def crepBody736_69 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 384#64]) crepBody736_68

def crepBody736_70 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64]) crepBody736_69

def crepBody736_71 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 192#64]) crepBody736_70

def crepBody736_72 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64]) crepBody736_71

def crepBody736_73 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 4) crepBody736_72

def crepBody736_74 : CrepProg (BitVec 64) :=
.seq crepBody736_1 crepBody736_73

def crepBody736_75 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody736_74

def crepBody736_76 : CrepProg (BitVec 64) :=
.seq crepBody736_0 crepBody736_75

def crepBody736_77 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody736_76

def data736 : CrepProg (BitVec 64) := crepBody736_77
def output736 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 119#8, 117#8, 95#8, 115#8, 113#8, 114#8, 116#8, 95#8, 100#8, 105#8, 118#8, 105#8, 115#8, 105#8, 111#8, 110#8,
    95#8, 102#8, 112#8, 50#8], [0, 1, 2], crepProgToHOL data736)
end InitECandidate.Proofs.FrontendStages.Crep
