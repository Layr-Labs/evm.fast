import InitECandidate.Proofs.FrontendStages.Crep.Translate561
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody577_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody577_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody577_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "bn_from_be"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 9]

def crepBody577_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody577_2

def crepBody577_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "digits_len" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8]

def crepBody577_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "memzero" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody577_6 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody577_5

def crepBody577_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody577_8 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody577_7

def crepBody577_9 : CrepProg (BitVec 64) :=
.seq crepBody577_6 crepBody577_8

def crepBody577_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody577_11 : CrepProg (BitVec 64) :=
.seq crepBody577_9 crepBody577_10

def crepBody577_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody577_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody577_11 crepBody577_12

def crepBody577_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "max"
  [Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 10]]

def crepBody577_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody577_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]

def crepBody577_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]

def crepBody577_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 10],
        Flapjack.CrepExp.const 8#64]]

def crepBody577_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody577_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 16#64]]

def crepBody577_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]

def crepBody577_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "bn_from_be"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 13]

def crepBody577_23 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody577_22

def crepBody577_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "bn_mod"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody577_25 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody577_24

def crepBody577_26 : CrepProg (BitVec 64) :=
.seq crepBody577_23 crepBody577_25

def crepBody577_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "be_top_bit" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody577_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "memzero"
  [Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]

def crepBody577_29 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_28

def crepBody577_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody577_31 : CrepProg (BitVec 64) :=
.seq crepBody577_30 crepBody577_12

def crepBody577_32 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 1#64) crepBody577_31

def crepBody577_33 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 15) crepBody577_32

def crepBody577_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.load (Flapjack.CrepExp.var 9))
        (Flapjack.CrepExp.const 1#64))]) crepBody577_12 crepBody577_33

def crepBody577_35 : CrepProg (BitVec 64) :=
.seq crepBody577_29 crepBody577_34

def crepBody577_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "memcpy"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]

def crepBody577_37 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_36

def crepBody577_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 21)

def crepBody577_39 : CrepProg (BitVec 64) :=
.seq crepBody577_38 crepBody577_12

def crepBody577_40 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 1#64]) crepBody577_39

def crepBody577_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "bn_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 16]

def crepBody577_42 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_41

def crepBody577_43 : CrepProg (BitVec 64) :=
.seq crepBody577_40 crepBody577_42

def crepBody577_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "bn_mod"
  [Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 10],
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody577_45 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_44

def crepBody577_46 : CrepProg (BitVec 64) :=
.seq crepBody577_43 crepBody577_45

def crepBody577_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "bn_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 16]

def crepBody577_48 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_47

def crepBody577_49 : CrepProg (BitVec 64) :=
.seq crepBody577_48 crepBody577_45

def crepBody577_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr
        (Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.sub
            [Flapjack.CrepExp.op Flapjack.BinOp.sub
                [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3],
                  Flapjack.CrepExp.const 1#64],
              Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 3#64)]))
        (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 7#64]),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody577_49 crepBody577_12

def crepBody577_51 : CrepProg (BitVec 64) :=
.seq crepBody577_46 crepBody577_50

def crepBody577_52 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 20)) crepBody577_51

def crepBody577_53 : CrepProg (BitVec 64) :=
.seq crepBody577_37 crepBody577_52

def crepBody577_54 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody577_35 crepBody577_53

def crepBody577_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "bn_to_be"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody577_56 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_55

def crepBody577_57 : CrepProg (BitVec 64) :=
.seq crepBody577_54 crepBody577_56

def crepBody577_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody577_59 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody577_58

def crepBody577_60 : CrepProg (BitVec 64) :=
.seq crepBody577_57 crepBody577_59

def crepBody577_61 : CrepProg (BitVec 64) :=
.seq crepBody577_60 crepBody577_10

def crepBody577_62 : CrepProg (BitVec 64) :=
.seq crepBody577_27 crepBody577_61

def crepBody577_63 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody577_62

def crepBody577_64 : CrepProg (BitVec 64) :=
.seq crepBody577_26 crepBody577_63

def crepBody577_65 : CrepProg (BitVec 64) :=
.seq crepBody577_21 crepBody577_64

def crepBody577_66 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody577_65

def crepBody577_67 : CrepProg (BitVec 64) :=
.seq crepBody577_20 crepBody577_66

def crepBody577_68 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody577_67

def crepBody577_69 : CrepProg (BitVec 64) :=
.seq crepBody577_19 crepBody577_68

def crepBody577_70 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody577_69

def crepBody577_71 : CrepProg (BitVec 64) :=
.seq crepBody577_18 crepBody577_70

def crepBody577_72 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody577_71

def crepBody577_73 : CrepProg (BitVec 64) :=
.seq crepBody577_17 crepBody577_72

def crepBody577_74 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody577_73

def crepBody577_75 : CrepProg (BitVec 64) :=
.seq crepBody577_16 crepBody577_74

def crepBody577_76 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody577_75

def crepBody577_77 : CrepProg (BitVec 64) :=
.seq crepBody577_15 crepBody577_76

def crepBody577_78 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody577_77

def crepBody577_79 : CrepProg (BitVec 64) :=
.seq crepBody577_14 crepBody577_78

def crepBody577_80 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody577_79

def crepBody577_81 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.const 2#64)) crepBody577_80

def crepBody577_82 : CrepProg (BitVec 64) :=
.seq crepBody577_13 crepBody577_81

def crepBody577_83 : CrepProg (BitVec 64) :=
.seq crepBody577_4 crepBody577_82

def crepBody577_84 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody577_83

def crepBody577_85 : CrepProg (BitVec 64) :=
.seq crepBody577_3 crepBody577_84

def crepBody577_86 : CrepProg (BitVec 64) :=
.seq crepBody577_1 crepBody577_85

def crepBody577_87 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody577_86

def crepBody577_88 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.const 2#64)) crepBody577_87

def crepBody577_89 : CrepProg (BitVec 64) :=
.seq crepBody577_0 crepBody577_88

def crepBody577_90 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody577_89

def data577 : CrepProg (BitVec 64) := crepBody577_90
def output577 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 101#8, 120#8, 112#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data577)
end InitECandidate.Proofs.FrontendStages.Crep
