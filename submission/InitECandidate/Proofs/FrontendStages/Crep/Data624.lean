import InitECandidate.Proofs.FrontendStages.Crep.Translate608
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody624_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "fq_mul_small"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.const 9#64]

def crepBody624_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "fq_add"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody624_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22], none)) "fq_neg"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody624_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31, 32, 33, 34], none)) "fq_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody624_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([35, 36, 37, 38], none)) "fq_mul"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30]

def crepBody624_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40, 41, 42], none)) "fq_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30]

def crepBody624_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43, 44, 45, 46], none)) "fq_mul"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody624_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([47, 48, 49, 50], none)) "fq_sub"
  [Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34,
    Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38]

def crepBody624_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([51, 52, 53, 54], none)) "fq_add"
  [Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42,
    Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46]

def crepBody624_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([55, 56, 57, 58], none)) "fq_mul_small"
  [Flapjack.CrepExp.var 51, Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54,
    Flapjack.CrepExp.const 9#64]

def crepBody624_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([59, 60, 61, 62], none)) "fq_sub"
  [Flapjack.CrepExp.var 47, Flapjack.CrepExp.var 48, Flapjack.CrepExp.var 49, Flapjack.CrepExp.var 50,
    Flapjack.CrepExp.var 55, Flapjack.CrepExp.var 56, Flapjack.CrepExp.var 57, Flapjack.CrepExp.var 58]

def crepBody624_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 63) (Flapjack.CrepExp.var 64)

def crepBody624_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 63, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 65)

def crepBody624_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 63, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 66)

def crepBody624_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 63, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 67)

def crepBody624_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody624_16 : CrepProg (BitVec 64) :=
.seq crepBody624_14 crepBody624_15

def crepBody624_17 : CrepProg (BitVec 64) :=
.seq crepBody624_13 crepBody624_16

def crepBody624_18 : CrepProg (BitVec 64) :=
.seq crepBody624_12 crepBody624_17

def crepBody624_19 : CrepProg (BitVec 64) :=
.seq crepBody624_11 crepBody624_18

def crepBody624_20 : CrepProg (BitVec 64) :=
.dec 67 (Flapjack.CrepExp.var 62) crepBody624_19

def crepBody624_21 : CrepProg (BitVec 64) :=
.dec 66 (Flapjack.CrepExp.var 61) crepBody624_20

def crepBody624_22 : CrepProg (BitVec 64) :=
.dec 65 (Flapjack.CrepExp.var 60) crepBody624_21

def crepBody624_23 : CrepProg (BitVec 64) :=
.dec 64 (Flapjack.CrepExp.var 59) crepBody624_22

def crepBody624_24 : CrepProg (BitVec 64) :=
.dec 63 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]]) crepBody624_23

def crepBody624_25 : CrepProg (BitVec 64) :=
.dec 67 (Flapjack.CrepExp.var 54) crepBody624_19

def crepBody624_26 : CrepProg (BitVec 64) :=
.dec 66 (Flapjack.CrepExp.var 53) crepBody624_25

def crepBody624_27 : CrepProg (BitVec 64) :=
.dec 65 (Flapjack.CrepExp.var 52) crepBody624_26

def crepBody624_28 : CrepProg (BitVec 64) :=
.dec 64 (Flapjack.CrepExp.var 51) crepBody624_27

def crepBody624_29 : CrepProg (BitVec 64) :=
.dec 63 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64],
        Flapjack.CrepExp.const 32#64]]) crepBody624_28

def crepBody624_30 : CrepProg (BitVec 64) :=
.seq crepBody624_24 crepBody624_29

def crepBody624_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 63)

def crepBody624_32 : CrepProg (BitVec 64) :=
.seq crepBody624_31 crepBody624_15

def crepBody624_33 : CrepProg (BitVec 64) :=
.dec 63 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody624_32

def crepBody624_34 : CrepProg (BitVec 64) :=
.seq crepBody624_30 crepBody624_33

def crepBody624_35 : CrepProg (BitVec 64) :=
.seq crepBody624_10 crepBody624_34

def crepBody624_36 : CrepProg (BitVec 64) :=
.dec 62 (Flapjack.CrepExp.const 0#64) crepBody624_35

def crepBody624_37 : CrepProg (BitVec 64) :=
.dec 61 (Flapjack.CrepExp.const 0#64) crepBody624_36

def crepBody624_38 : CrepProg (BitVec 64) :=
.dec 60 (Flapjack.CrepExp.const 0#64) crepBody624_37

def crepBody624_39 : CrepProg (BitVec 64) :=
.dec 59 (Flapjack.CrepExp.const 0#64) crepBody624_38

def crepBody624_40 : CrepProg (BitVec 64) :=
.seq crepBody624_9 crepBody624_39

def crepBody624_41 : CrepProg (BitVec 64) :=
.dec 58 (Flapjack.CrepExp.const 0#64) crepBody624_40

def crepBody624_42 : CrepProg (BitVec 64) :=
.dec 57 (Flapjack.CrepExp.const 0#64) crepBody624_41

def crepBody624_43 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.const 0#64) crepBody624_42

def crepBody624_44 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.const 0#64) crepBody624_43

def crepBody624_45 : CrepProg (BitVec 64) :=
.seq crepBody624_8 crepBody624_44

def crepBody624_46 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.const 0#64) crepBody624_45

def crepBody624_47 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody624_46

def crepBody624_48 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody624_47

def crepBody624_49 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.const 0#64) crepBody624_48

def crepBody624_50 : CrepProg (BitVec 64) :=
.seq crepBody624_7 crepBody624_49

def crepBody624_51 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.const 0#64) crepBody624_50

def crepBody624_52 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 0#64) crepBody624_51

def crepBody624_53 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody624_52

def crepBody624_54 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody624_53

def crepBody624_55 : CrepProg (BitVec 64) :=
.seq crepBody624_6 crepBody624_54

def crepBody624_56 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody624_55

def crepBody624_57 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody624_56

def crepBody624_58 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody624_57

def crepBody624_59 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody624_58

def crepBody624_60 : CrepProg (BitVec 64) :=
.seq crepBody624_5 crepBody624_59

def crepBody624_61 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody624_60

def crepBody624_62 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody624_61

def crepBody624_63 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody624_62

def crepBody624_64 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody624_63

def crepBody624_65 : CrepProg (BitVec 64) :=
.seq crepBody624_4 crepBody624_64

def crepBody624_66 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody624_65

def crepBody624_67 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody624_66

def crepBody624_68 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody624_67

def crepBody624_69 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody624_68

def crepBody624_70 : CrepProg (BitVec 64) :=
.seq crepBody624_3 crepBody624_69

def crepBody624_71 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody624_70

def crepBody624_72 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody624_71

def crepBody624_73 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody624_72

def crepBody624_74 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody624_73

def crepBody624_75 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody624_74

def crepBody624_76 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody624_75

def crepBody624_77 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody624_76

def crepBody624_78 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 32#64])) crepBody624_77

def crepBody624_79 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64]],
      Flapjack.CrepExp.const 24#64])) crepBody624_78

def crepBody624_80 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64]],
      Flapjack.CrepExp.const 16#64])) crepBody624_79

def crepBody624_81 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64]],
      Flapjack.CrepExp.const 8#64])) crepBody624_80

def crepBody624_82 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 376#64]),
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64]])) crepBody624_81

def crepBody624_83 : CrepProg (BitVec 64) :=
.seq crepBody624_2 crepBody624_82

def crepBody624_84 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody624_83

def crepBody624_85 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody624_84

def crepBody624_86 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody624_85

def crepBody624_87 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody624_86

def crepBody624_88 : CrepProg (BitVec 64) :=
.seq crepBody624_1 crepBody624_87

def crepBody624_89 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody624_88

def crepBody624_90 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody624_89

def crepBody624_91 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody624_90

def crepBody624_92 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody624_91

def crepBody624_93 : CrepProg (BitVec 64) :=
.seq crepBody624_0 crepBody624_92

def crepBody624_94 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody624_93

def crepBody624_95 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody624_94

def crepBody624_96 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody624_95

def crepBody624_97 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody624_96

def crepBody624_98 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody624_97

def crepBody624_99 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody624_98

def crepBody624_100 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody624_99

def crepBody624_101 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64],
          Flapjack.CrepExp.const 32#64]])) crepBody624_100

def crepBody624_102 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody624_101

def crepBody624_103 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody624_102

def crepBody624_104 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody624_103

def crepBody624_105 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]])) crepBody624_104

def crepBody624_106 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 6#64)) crepBody624_105

def crepBody624_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody624_108 : CrepProg (BitVec 64) :=
.seq crepBody624_106 crepBody624_107

def crepBody624_109 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody624_108

def data624 : CrepProg (BitVec 64) := crepBody624_109
def output624 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 102#8, 114#8, 111#8, 98#8], [0, 1], crepProgToHOL data624)
end InitECandidate.Proofs.FrontendStages.Crep
