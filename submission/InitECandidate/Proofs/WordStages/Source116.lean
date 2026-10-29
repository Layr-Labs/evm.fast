import InitECandidate.Proofs.WordStages.Source100
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody116_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody116_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody116_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody116_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody116_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 34)

def sourceBody116_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 38 22 1))

def sourceBody116_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 1)

def sourceBody116_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 3)

def sourceBody116_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_6 sourceBody116_7

def sourceBody116_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_5 sourceBody116_8

def sourceBody116_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_4 sourceBody116_9

def sourceBody116_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_3 sourceBody116_10

def sourceBody116_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_11

def sourceBody116_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_2 sourceBody116_12

def sourceBody116_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_13

def sourceBody116_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_1 sourceBody116_14

def sourceBody116_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_15

def sourceBody116_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody116_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody116_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def sourceBody116_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 40)

def sourceBody116_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 34 28 1))

def sourceBody116_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 1)

def sourceBody116_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 3)

def sourceBody116_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_22 sourceBody116_23

def sourceBody116_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_21 sourceBody116_24

def sourceBody116_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_20 sourceBody116_25

def sourceBody116_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_19 sourceBody116_26

def sourceBody116_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_27

def sourceBody116_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_18 sourceBody116_28

def sourceBody116_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_29

def sourceBody116_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_17 sourceBody116_30

def sourceBody116_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_31

def sourceBody116_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody116_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody116_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody116_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 30)

def sourceBody116_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 40 18 1))

def sourceBody116_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 1)

def sourceBody116_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 3)

def sourceBody116_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_38 sourceBody116_39

def sourceBody116_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_37 sourceBody116_40

def sourceBody116_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_36 sourceBody116_41

def sourceBody116_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_35 sourceBody116_42

def sourceBody116_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_43

def sourceBody116_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_34 sourceBody116_44

def sourceBody116_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_45

def sourceBody116_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_33 sourceBody116_46

def sourceBody116_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_47

def sourceBody116_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody116_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody116_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody116_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 36)

def sourceBody116_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 30 24 1))

def sourceBody116_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 1)

def sourceBody116_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 3)

def sourceBody116_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_54 sourceBody116_55

def sourceBody116_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_53 sourceBody116_56

def sourceBody116_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_52 sourceBody116_57

def sourceBody116_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_51 sourceBody116_58

def sourceBody116_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_59

def sourceBody116_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_50 sourceBody116_60

def sourceBody116_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_61

def sourceBody116_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_49 sourceBody116_62

def sourceBody116_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_63

def sourceBody116_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody116_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody116_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def sourceBody116_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 40)

def sourceBody116_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30, 24, 36, 20]

def sourceBody116_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_69 sourceBody116_0

def sourceBody116_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_68 sourceBody116_70

def sourceBody116_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_67 sourceBody116_71

def sourceBody116_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_66 sourceBody116_72

def sourceBody116_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_65 sourceBody116_73

def sourceBody116_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_64 sourceBody116_74

def sourceBody116_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_75

def sourceBody116_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_76

def sourceBody116_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_77

def sourceBody116_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_78

def sourceBody116_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_48 sourceBody116_79

def sourceBody116_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_80

def sourceBody116_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_81

def sourceBody116_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_82

def sourceBody116_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_83

def sourceBody116_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_32 sourceBody116_84

def sourceBody116_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_85

def sourceBody116_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_86

def sourceBody116_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_87

def sourceBody116_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_88

def sourceBody116_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_16 sourceBody116_89

def sourceBody116_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_90

def sourceBody116_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_91

def sourceBody116_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_92

def sourceBody116_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody116_0 sourceBody116_93

def source116 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (116, 9, sourceBody116_94)
end InitECandidate.Proofs.WordStages
