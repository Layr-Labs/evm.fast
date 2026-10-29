import InitECandidate.Proofs.WordStages.Source102
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody118_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody118_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody118_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody118_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody118_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 22)

def sourceBody118_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 30 12 1))

def sourceBody118_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 1)

def sourceBody118_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 3)

def sourceBody118_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_6 sourceBody118_7

def sourceBody118_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_5 sourceBody118_8

def sourceBody118_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_4 sourceBody118_9

def sourceBody118_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_3 sourceBody118_10

def sourceBody118_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_11

def sourceBody118_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_2 sourceBody118_12

def sourceBody118_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_13

def sourceBody118_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_1 sourceBody118_14

def sourceBody118_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_15

def sourceBody118_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody118_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody118_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody118_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 28)

def sourceBody118_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 22 16 1))

def sourceBody118_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 1)

def sourceBody118_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 3)

def sourceBody118_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_22 sourceBody118_23

def sourceBody118_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_21 sourceBody118_24

def sourceBody118_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_20 sourceBody118_25

def sourceBody118_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_19 sourceBody118_26

def sourceBody118_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_27

def sourceBody118_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_18 sourceBody118_28

def sourceBody118_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_29

def sourceBody118_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_17 sourceBody118_30

def sourceBody118_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_31

def sourceBody118_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody118_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody118_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody118_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 26)

def sourceBody118_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 28 14 1))

def sourceBody118_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 1)

def sourceBody118_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 3)

def sourceBody118_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_38 sourceBody118_39

def sourceBody118_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_37 sourceBody118_40

def sourceBody118_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_36 sourceBody118_41

def sourceBody118_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_35 sourceBody118_42

def sourceBody118_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_43

def sourceBody118_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_34 sourceBody118_44

def sourceBody118_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_45

def sourceBody118_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_33 sourceBody118_46

def sourceBody118_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_47

def sourceBody118_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody118_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody118_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody118_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 32)

def sourceBody118_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 26 20 1))

def sourceBody118_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 1)

def sourceBody118_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 3)

def sourceBody118_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_54 sourceBody118_55

def sourceBody118_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_53 sourceBody118_56

def sourceBody118_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_52 sourceBody118_57

def sourceBody118_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_51 sourceBody118_58

def sourceBody118_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_59

def sourceBody118_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_50 sourceBody118_60

def sourceBody118_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_61

def sourceBody118_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_49 sourceBody118_62

def sourceBody118_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_63

def sourceBody118_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody118_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody118_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody118_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody118_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26, 20, 32, 10]

def sourceBody118_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_69 sourceBody118_0

def sourceBody118_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_68 sourceBody118_70

def sourceBody118_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_67 sourceBody118_71

def sourceBody118_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_66 sourceBody118_72

def sourceBody118_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_65 sourceBody118_73

def sourceBody118_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_64 sourceBody118_74

def sourceBody118_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_75

def sourceBody118_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_76

def sourceBody118_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_77

def sourceBody118_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_78

def sourceBody118_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_48 sourceBody118_79

def sourceBody118_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_80

def sourceBody118_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_81

def sourceBody118_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_82

def sourceBody118_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_83

def sourceBody118_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_32 sourceBody118_84

def sourceBody118_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_85

def sourceBody118_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_86

def sourceBody118_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_87

def sourceBody118_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_88

def sourceBody118_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_16 sourceBody118_89

def sourceBody118_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_90

def sourceBody118_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_91

def sourceBody118_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_92

def sourceBody118_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody118_0 sourceBody118_93

def source118 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (118, 5, sourceBody118_94)
end InitECandidate.Proofs.WordStages
