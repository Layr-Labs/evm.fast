import InitECandidate.Proofs.WordStages.Source99
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody115_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody115_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody115_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody115_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody115_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 36)

def sourceBody115_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 40 22 1))

def sourceBody115_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 1)

def sourceBody115_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 3)

def sourceBody115_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_6 sourceBody115_7

def sourceBody115_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_5 sourceBody115_8

def sourceBody115_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_4 sourceBody115_9

def sourceBody115_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_3 sourceBody115_10

def sourceBody115_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_11

def sourceBody115_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_2 sourceBody115_12

def sourceBody115_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_13

def sourceBody115_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_1 sourceBody115_14

def sourceBody115_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_15

def sourceBody115_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody115_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody115_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody115_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 42)

def sourceBody115_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 36 28 1))

def sourceBody115_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 1)

def sourceBody115_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 3)

def sourceBody115_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_22 sourceBody115_23

def sourceBody115_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_21 sourceBody115_24

def sourceBody115_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_20 sourceBody115_25

def sourceBody115_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_19 sourceBody115_26

def sourceBody115_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_27

def sourceBody115_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_18 sourceBody115_28

def sourceBody115_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_29

def sourceBody115_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_17 sourceBody115_30

def sourceBody115_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_31

def sourceBody115_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody115_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody115_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody115_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 30)

def sourceBody115_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 42 18 1))

def sourceBody115_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 1)

def sourceBody115_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 3)

def sourceBody115_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_38 sourceBody115_39

def sourceBody115_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_37 sourceBody115_40

def sourceBody115_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_36 sourceBody115_41

def sourceBody115_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_35 sourceBody115_42

def sourceBody115_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_43

def sourceBody115_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_34 sourceBody115_44

def sourceBody115_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_45

def sourceBody115_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_33 sourceBody115_46

def sourceBody115_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_47

def sourceBody115_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody115_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody115_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 28)

def sourceBody115_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 38)

def sourceBody115_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 30 24 1))

def sourceBody115_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 1)

def sourceBody115_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 3)

def sourceBody115_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_54 sourceBody115_55

def sourceBody115_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_53 sourceBody115_56

def sourceBody115_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_52 sourceBody115_57

def sourceBody115_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_51 sourceBody115_58

def sourceBody115_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_59

def sourceBody115_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_50 sourceBody115_60

def sourceBody115_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_61

def sourceBody115_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_49 sourceBody115_62

def sourceBody115_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_63

def sourceBody115_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody115_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 40)

def sourceBody115_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody115_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 42)

def sourceBody115_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody115_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30, 24, 38, 20, 34]

def sourceBody115_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_70 sourceBody115_0

def sourceBody115_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_69 sourceBody115_71

def sourceBody115_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_68 sourceBody115_72

def sourceBody115_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_67 sourceBody115_73

def sourceBody115_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_66 sourceBody115_74

def sourceBody115_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_65 sourceBody115_75

def sourceBody115_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_64 sourceBody115_76

def sourceBody115_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_77

def sourceBody115_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_78

def sourceBody115_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_79

def sourceBody115_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_80

def sourceBody115_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_48 sourceBody115_81

def sourceBody115_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_82

def sourceBody115_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_83

def sourceBody115_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_84

def sourceBody115_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_85

def sourceBody115_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_32 sourceBody115_86

def sourceBody115_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_87

def sourceBody115_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_88

def sourceBody115_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_89

def sourceBody115_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_90

def sourceBody115_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_16 sourceBody115_91

def sourceBody115_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_92

def sourceBody115_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_93

def sourceBody115_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_94

def sourceBody115_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody115_0 sourceBody115_95

def source115 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (115, 9, sourceBody115_96)
end InitECandidate.Proofs.WordStages
