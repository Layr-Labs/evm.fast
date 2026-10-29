import InitECandidate.Proofs.WordStages.Source101
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody117_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody117_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody117_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody117_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody117_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 34)

def sourceBody117_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 38 22 1))

def sourceBody117_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 1)

def sourceBody117_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 3)

def sourceBody117_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_6 sourceBody117_7

def sourceBody117_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_5 sourceBody117_8

def sourceBody117_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_4 sourceBody117_9

def sourceBody117_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_3 sourceBody117_10

def sourceBody117_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_11

def sourceBody117_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_2 sourceBody117_12

def sourceBody117_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_13

def sourceBody117_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_1 sourceBody117_14

def sourceBody117_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_15

def sourceBody117_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody117_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 12,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody117_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def sourceBody117_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 40)

def sourceBody117_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 34 28 1))

def sourceBody117_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 1)

def sourceBody117_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 3)

def sourceBody117_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_22 sourceBody117_23

def sourceBody117_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_21 sourceBody117_24

def sourceBody117_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_20 sourceBody117_25

def sourceBody117_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_19 sourceBody117_26

def sourceBody117_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_27

def sourceBody117_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_18 sourceBody117_28

def sourceBody117_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_29

def sourceBody117_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_17 sourceBody117_30

def sourceBody117_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_31

def sourceBody117_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody117_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody117_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody117_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 30)

def sourceBody117_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 40 18 1))

def sourceBody117_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 1)

def sourceBody117_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 3)

def sourceBody117_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_38 sourceBody117_39

def sourceBody117_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_37 sourceBody117_40

def sourceBody117_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_36 sourceBody117_41

def sourceBody117_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_35 sourceBody117_42

def sourceBody117_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_43

def sourceBody117_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_34 sourceBody117_44

def sourceBody117_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_45

def sourceBody117_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_33 sourceBody117_46

def sourceBody117_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_47

def sourceBody117_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody117_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody117_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody117_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 36)

def sourceBody117_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 30 24 1))

def sourceBody117_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 1)

def sourceBody117_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 3)

def sourceBody117_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_54 sourceBody117_55

def sourceBody117_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_53 sourceBody117_56

def sourceBody117_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_52 sourceBody117_57

def sourceBody117_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_51 sourceBody117_58

def sourceBody117_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_59

def sourceBody117_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_50 sourceBody117_60

def sourceBody117_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_61

def sourceBody117_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_49 sourceBody117_62

def sourceBody117_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_63

def sourceBody117_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody117_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody117_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def sourceBody117_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 40)

def sourceBody117_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30, 24, 36, 20]

def sourceBody117_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_69 sourceBody117_0

def sourceBody117_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_68 sourceBody117_70

def sourceBody117_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_67 sourceBody117_71

def sourceBody117_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_66 sourceBody117_72

def sourceBody117_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_65 sourceBody117_73

def sourceBody117_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_64 sourceBody117_74

def sourceBody117_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_75

def sourceBody117_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_76

def sourceBody117_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_77

def sourceBody117_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_78

def sourceBody117_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_48 sourceBody117_79

def sourceBody117_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_80

def sourceBody117_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_81

def sourceBody117_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_82

def sourceBody117_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_83

def sourceBody117_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_32 sourceBody117_84

def sourceBody117_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_85

def sourceBody117_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_86

def sourceBody117_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_87

def sourceBody117_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_88

def sourceBody117_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_16 sourceBody117_89

def sourceBody117_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_90

def sourceBody117_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_91

def sourceBody117_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_92

def sourceBody117_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody117_0 sourceBody117_93

def source117 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (117, 9, sourceBody117_94)
end InitECandidate.Proofs.WordStages
