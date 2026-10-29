import InitECandidate.Proofs.WordStages.Source103
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody119_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody119_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody119_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody119_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody119_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody119_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 40)

def sourceBody119_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 34)

def sourceBody119_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 30 30 46 8))

def sourceBody119_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_7 sourceBody119_0

def sourceBody119_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_6 sourceBody119_8

def sourceBody119_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_5 sourceBody119_9

def sourceBody119_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody119_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def sourceBody119_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody119_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 38 38 44 16))

def sourceBody119_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_14 sourceBody119_0

def sourceBody119_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_13 sourceBody119_15

def sourceBody119_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_12 sourceBody119_16

def sourceBody119_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def sourceBody119_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 40)

def sourceBody119_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody119_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 42 42 28 18))

def sourceBody119_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_21 sourceBody119_0

def sourceBody119_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_20 sourceBody119_22

def sourceBody119_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_19 sourceBody119_23

def sourceBody119_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 42)

def sourceBody119_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody119_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody119_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 48 48 36 24))

def sourceBody119_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_28 sourceBody119_0

def sourceBody119_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_27 sourceBody119_29

def sourceBody119_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_26 sourceBody119_30

def sourceBody119_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def sourceBody119_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody119_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 32)

def sourceBody119_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 14 10 1))

def sourceBody119_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 1)

def sourceBody119_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 3)

def sourceBody119_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_36 sourceBody119_37

def sourceBody119_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_35 sourceBody119_38

def sourceBody119_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_34 sourceBody119_39

def sourceBody119_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_33 sourceBody119_40

def sourceBody119_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_41

def sourceBody119_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_32 sourceBody119_42

def sourceBody119_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_31 sourceBody119_43

def sourceBody119_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_25 sourceBody119_44

def sourceBody119_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_24 sourceBody119_45

def sourceBody119_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 20)

def sourceBody119_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 50)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody119_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody119_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 36)

def sourceBody119_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 42 14 1))

def sourceBody119_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 1)

def sourceBody119_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 3)

def sourceBody119_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_52 sourceBody119_53

def sourceBody119_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_51 sourceBody119_54

def sourceBody119_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_50 sourceBody119_55

def sourceBody119_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_49 sourceBody119_56

def sourceBody119_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_57

def sourceBody119_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_48 sourceBody119_58

def sourceBody119_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_59

def sourceBody119_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_47 sourceBody119_60

def sourceBody119_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_61

def sourceBody119_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 50)
        (Flapjack.WordLangExpHOL.const 32#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 32#64),
      Flapjack.WordLangExpHOL.var 18])

def sourceBody119_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody119_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody119_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 36]

def sourceBody119_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_66 sourceBody119_0

def sourceBody119_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_65 sourceBody119_67

def sourceBody119_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_64 sourceBody119_68

def sourceBody119_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_63 sourceBody119_69

def sourceBody119_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_70

def sourceBody119_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_62 sourceBody119_71

def sourceBody119_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_72

def sourceBody119_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_73

def sourceBody119_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_74

def sourceBody119_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_75

def sourceBody119_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_46 sourceBody119_76

def sourceBody119_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_77

def sourceBody119_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_78

def sourceBody119_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_79

def sourceBody119_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_80

def sourceBody119_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_18 sourceBody119_81

def sourceBody119_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_17 sourceBody119_82

def sourceBody119_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_11 sourceBody119_83

def sourceBody119_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_10 sourceBody119_84

def sourceBody119_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_4 sourceBody119_85

def sourceBody119_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_86

def sourceBody119_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_3 sourceBody119_87

def sourceBody119_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_88

def sourceBody119_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_2 sourceBody119_89

def sourceBody119_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_90

def sourceBody119_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_1 sourceBody119_91

def sourceBody119_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody119_0 sourceBody119_92

def source119 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (119, 3, sourceBody119_93)
end InitECandidate.Proofs.WordStages
