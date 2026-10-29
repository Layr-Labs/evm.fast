import InitECandidate.Proofs.FrontendStages.Crep.Translate611
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody627_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody627_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 416#64]

def crepBody627_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 416#64]

def crepBody627_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 416#64]

def crepBody627_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 416#64]

def crepBody627_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 416#64]

def crepBody627_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 416#64]

def crepBody627_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 416#64]

def crepBody627_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_7

def crepBody627_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody627_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 11)

def crepBody627_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 12)

def crepBody627_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 13)

def crepBody627_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody627_14 : CrepProg (BitVec 64) :=
.seq crepBody627_12 crepBody627_13

def crepBody627_15 : CrepProg (BitVec 64) :=
.seq crepBody627_11 crepBody627_14

def crepBody627_16 : CrepProg (BitVec 64) :=
.seq crepBody627_10 crepBody627_15

def crepBody627_17 : CrepProg (BitVec 64) :=
.seq crepBody627_9 crepBody627_16

def crepBody627_18 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 2762764518496934255#64) crepBody627_17

def crepBody627_19 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 4628036095437277618#64) crepBody627_18

def crepBody627_20 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 13698472384431417117#64) crepBody627_19

def crepBody627_21 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 5544790254283102953#64) crepBody627_20

def crepBody627_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 3) crepBody627_21

def crepBody627_23 : CrepProg (BitVec 64) :=
.seq crepBody627_8 crepBody627_22

def crepBody627_24 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 2710440286313254821#64) crepBody627_17

def crepBody627_25 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 2169086236411634456#64) crepBody627_24

def crepBody627_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 15026249742141879542#64) crepBody627_25

def crepBody627_27 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 10102850021236865696#64) crepBody627_26

def crepBody627_28 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64]) crepBody627_27

def crepBody627_29 : CrepProg (BitVec 64) :=
.seq crepBody627_23 crepBody627_28

def crepBody627_30 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 1011752739694698287#64) crepBody627_17

def crepBody627_31 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 7381016538464732716#64) crepBody627_30

def crepBody627_32 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 754611498739239741#64) crepBody627_31

def crepBody627_33 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 15230403791020821917#64) crepBody627_32

def crepBody627_34 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 384#64]) crepBody627_33

def crepBody627_35 : CrepProg (BitVec 64) :=
.seq crepBody627_29 crepBody627_34

def crepBody627_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 416#64]

def crepBody627_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_36

def crepBody627_38 : CrepProg (BitVec 64) :=
.seq crepBody627_35 crepBody627_37

def crepBody627_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memcpy"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 384#64]

def crepBody627_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_39

def crepBody627_41 : CrepProg (BitVec 64) :=
.seq crepBody627_38 crepBody627_40

def crepBody627_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 416#64]

def crepBody627_43 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_42

def crepBody627_44 : CrepProg (BitVec 64) :=
.seq crepBody627_41 crepBody627_43

def crepBody627_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 416#64]

def crepBody627_46 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_45

def crepBody627_47 : CrepProg (BitVec 64) :=
.seq crepBody627_44 crepBody627_46

def crepBody627_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 6) crepBody627_33

def crepBody627_49 : CrepProg (BitVec 64) :=
.seq crepBody627_47 crepBody627_48

def crepBody627_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "fq_poly_deg" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 13#64]

def crepBody627_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.break 0

def crepBody627_52 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLess (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 9)) crepBody627_51 crepBody627_13

def crepBody627_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fq_poly_deg" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 13#64]

def crepBody627_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "memzero" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 416#64]

def crepBody627_55 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody627_54

def crepBody627_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "fq_inv"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody627_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26], none)) "fq_mul"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody627_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.var 28)

def crepBody627_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 29)

def crepBody627_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 30)

def crepBody627_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 31)

def crepBody627_62 : CrepProg (BitVec 64) :=
.seq crepBody627_61 crepBody627_13

def crepBody627_63 : CrepProg (BitVec 64) :=
.seq crepBody627_60 crepBody627_62

def crepBody627_64 : CrepProg (BitVec 64) :=
.seq crepBody627_59 crepBody627_63

def crepBody627_65 : CrepProg (BitVec 64) :=
.seq crepBody627_58 crepBody627_64

def crepBody627_66 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.var 26) crepBody627_65

def crepBody627_67 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 25) crepBody627_66

def crepBody627_68 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.var 24) crepBody627_67

def crepBody627_69 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.var 23) crepBody627_68

def crepBody627_70 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9],
        Flapjack.CrepExp.const 32#64]]) crepBody627_69

def crepBody627_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fq_poly_submul"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24,
    Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9], Flapjack.CrepExp.var 9]

def crepBody627_72 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody627_71

def crepBody627_73 : CrepProg (BitVec 64) :=
.seq crepBody627_70 crepBody627_72

def crepBody627_74 : CrepProg (BitVec 64) :=
.seq crepBody627_73 crepBody627_53

def crepBody627_75 : CrepProg (BitVec 64) :=
.seq crepBody627_57 crepBody627_74

def crepBody627_76 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody627_75

def crepBody627_77 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody627_76

def crepBody627_78 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody627_77

def crepBody627_79 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody627_78

def crepBody627_80 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody627_79

def crepBody627_81 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody627_80

def crepBody627_82 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody627_81

def crepBody627_83 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 3,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]])) crepBody627_82

def crepBody627_84 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLess (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 9)) crepBody627_83

def crepBody627_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "memcpy"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 416#64]

def crepBody627_86 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody627_85

def crepBody627_87 : CrepProg (BitVec 64) :=
.seq crepBody627_84 crepBody627_86

def crepBody627_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]

def crepBody627_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "fq_poly_submul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 19]]

def crepBody627_90 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody627_89

def crepBody627_91 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 0#64)) crepBody627_90 crepBody627_13

def crepBody627_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.var 25)

def crepBody627_93 : CrepProg (BitVec 64) :=
.seq crepBody627_92 crepBody627_13

def crepBody627_94 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 1#64]) crepBody627_93

def crepBody627_95 : CrepProg (BitVec 64) :=
.seq crepBody627_91 crepBody627_94

def crepBody627_96 : CrepProg (BitVec 64) :=
.seq crepBody627_88 crepBody627_95

def crepBody627_97 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody627_96

def crepBody627_98 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 7,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody627_97

def crepBody627_99 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 7,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody627_98

def crepBody627_100 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 7,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody627_99

def crepBody627_101 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 32#64]])) crepBody627_100

def crepBody627_102 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 13#64)) crepBody627_101

def crepBody627_103 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody627_104 : CrepProg (BitVec 64) :=
.seq crepBody627_103 crepBody627_13

def crepBody627_105 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 20)

def crepBody627_106 : CrepProg (BitVec 64) :=
.seq crepBody627_105 crepBody627_13

def crepBody627_107 : CrepProg (BitVec 64) :=
.seq crepBody627_104 crepBody627_106

def crepBody627_108 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 5)

def crepBody627_109 : CrepProg (BitVec 64) :=
.seq crepBody627_108 crepBody627_13

def crepBody627_110 : CrepProg (BitVec 64) :=
.seq crepBody627_107 crepBody627_109

def crepBody627_111 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody627_112 : CrepProg (BitVec 64) :=
.seq crepBody627_111 crepBody627_13

def crepBody627_113 : CrepProg (BitVec 64) :=
.seq crepBody627_110 crepBody627_112

def crepBody627_114 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 8)

def crepBody627_115 : CrepProg (BitVec 64) :=
.seq crepBody627_114 crepBody627_13

def crepBody627_116 : CrepProg (BitVec 64) :=
.seq crepBody627_113 crepBody627_115

def crepBody627_117 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 20)

def crepBody627_118 : CrepProg (BitVec 64) :=
.seq crepBody627_117 crepBody627_13

def crepBody627_119 : CrepProg (BitVec 64) :=
.seq crepBody627_116 crepBody627_118

def crepBody627_120 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 3) crepBody627_119

def crepBody627_121 : CrepProg (BitVec 64) :=
.seq crepBody627_102 crepBody627_120

def crepBody627_122 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody627_121

def crepBody627_123 : CrepProg (BitVec 64) :=
.seq crepBody627_87 crepBody627_122

def crepBody627_124 : CrepProg (BitVec 64) :=
.seq crepBody627_56 crepBody627_123

def crepBody627_125 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody627_124

def crepBody627_126 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody627_125

def crepBody627_127 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody627_126

def crepBody627_128 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody627_127

def crepBody627_129 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 4,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody627_128

def crepBody627_130 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 4,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody627_129

def crepBody627_131 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 4,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody627_130

def crepBody627_132 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 4,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]])) crepBody627_131

def crepBody627_133 : CrepProg (BitVec 64) :=
.seq crepBody627_55 crepBody627_132

def crepBody627_134 : CrepProg (BitVec 64) :=
.seq crepBody627_53 crepBody627_133

def crepBody627_135 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody627_134

def crepBody627_136 : CrepProg (BitVec 64) :=
.seq crepBody627_52 crepBody627_135

def crepBody627_137 : CrepProg (BitVec 64) :=
.seq crepBody627_50 crepBody627_136

def crepBody627_138 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_137

def crepBody627_139 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.const 1#64) crepBody627_138

def crepBody627_140 : CrepProg (BitVec 64) :=
.seq crepBody627_49 crepBody627_139

def crepBody627_141 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memzero" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 384#64]

def crepBody627_142 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody627_141

def crepBody627_143 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody627_144 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody627_143

def crepBody627_145 : CrepProg (BitVec 64) :=
.seq crepBody627_142 crepBody627_144

def crepBody627_146 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody627_147 : CrepProg (BitVec 64) :=
.seq crepBody627_145 crepBody627_146

def crepBody627_148 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody627_147 crepBody627_13

def crepBody627_149 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "fq_inv"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody627_150 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26], none)) "fq_mul"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody627_151 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]]) crepBody627_69

def crepBody627_152 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 27)

def crepBody627_153 : CrepProg (BitVec 64) :=
.seq crepBody627_152 crepBody627_13

def crepBody627_154 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 1#64]) crepBody627_153

def crepBody627_155 : CrepProg (BitVec 64) :=
.seq crepBody627_151 crepBody627_154

def crepBody627_156 : CrepProg (BitVec 64) :=
.seq crepBody627_150 crepBody627_155

def crepBody627_157 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody627_156

def crepBody627_158 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody627_157

def crepBody627_159 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody627_158

def crepBody627_160 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody627_159

def crepBody627_161 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 6,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody627_160

def crepBody627_162 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 6,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody627_161

def crepBody627_163 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 6,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody627_162

def crepBody627_164 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 6,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]])) crepBody627_163

def crepBody627_165 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 12#64)) crepBody627_164

def crepBody627_166 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody627_167 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody627_166

def crepBody627_168 : CrepProg (BitVec 64) :=
.seq crepBody627_165 crepBody627_167

def crepBody627_169 : CrepProg (BitVec 64) :=
.seq crepBody627_168 crepBody627_146

def crepBody627_170 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody627_169

def crepBody627_171 : CrepProg (BitVec 64) :=
.seq crepBody627_149 crepBody627_170

def crepBody627_172 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody627_171

def crepBody627_173 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody627_172

def crepBody627_174 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody627_173

def crepBody627_175 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody627_174

def crepBody627_176 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])) crepBody627_175

def crepBody627_177 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64])) crepBody627_176

def crepBody627_178 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64])) crepBody627_177

def crepBody627_179 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 4)) crepBody627_178

def crepBody627_180 : CrepProg (BitVec 64) :=
.seq crepBody627_148 crepBody627_179

def crepBody627_181 : CrepProg (BitVec 64) :=
.seq crepBody627_50 crepBody627_180

def crepBody627_182 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody627_181

def crepBody627_183 : CrepProg (BitVec 64) :=
.seq crepBody627_140 crepBody627_182

def crepBody627_184 : CrepProg (BitVec 64) :=
.seq crepBody627_6 crepBody627_183

def crepBody627_185 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody627_184

def crepBody627_186 : CrepProg (BitVec 64) :=
.seq crepBody627_5 crepBody627_185

def crepBody627_187 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody627_186

def crepBody627_188 : CrepProg (BitVec 64) :=
.seq crepBody627_4 crepBody627_187

def crepBody627_189 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody627_188

def crepBody627_190 : CrepProg (BitVec 64) :=
.seq crepBody627_3 crepBody627_189

def crepBody627_191 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody627_190

def crepBody627_192 : CrepProg (BitVec 64) :=
.seq crepBody627_2 crepBody627_191

def crepBody627_193 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody627_192

def crepBody627_194 : CrepProg (BitVec 64) :=
.seq crepBody627_1 crepBody627_193

def crepBody627_195 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody627_194

def crepBody627_196 : CrepProg (BitVec 64) :=
.seq crepBody627_0 crepBody627_195

def crepBody627_197 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody627_196

def data627 : CrepProg (BitVec 64) := crepBody627_197
def output627 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 105#8, 110#8, 118#8], [0, 1], crepProgToHOL data627)
end InitECandidate.Proofs.FrontendStages.Crep
