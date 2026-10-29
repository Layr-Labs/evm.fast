import InitECandidate.Proofs.WordStages.Source627
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody643_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody643_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody643_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody643_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody643_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody643_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody643_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody643_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody643_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody643_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody643_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody643_0, 643, 2)) (some 106) ([26, 40, 22, 36, 28, 42, 18, 30]) (some (26, sourceBody643_9, 643, 3))

def sourceBody643_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody643_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_10 sourceBody643_11

def sourceBody643_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_12 sourceBody643_0

def sourceBody643_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_8 sourceBody643_13

def sourceBody643_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_7 sourceBody643_14

def sourceBody643_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_6 sourceBody643_15

def sourceBody643_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_5 sourceBody643_16

def sourceBody643_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_4 sourceBody643_17

def sourceBody643_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_3 sourceBody643_18

def sourceBody643_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_2 sourceBody643_19

def sourceBody643_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_1 sourceBody643_20

def sourceBody643_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody643_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody643_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody643_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody643_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody643_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody643_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody643_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody643_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody643_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 40, 22, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody643_0, 643, 4)) (some 117) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody643_30, 643, 5))

def sourceBody643_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_31 sourceBody643_11

def sourceBody643_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_32 sourceBody643_0

def sourceBody643_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_29 sourceBody643_33

def sourceBody643_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_28 sourceBody643_34

def sourceBody643_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_27 sourceBody643_35

def sourceBody643_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_26 sourceBody643_36

def sourceBody643_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_25 sourceBody643_37

def sourceBody643_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_24 sourceBody643_38

def sourceBody643_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_23 sourceBody643_39

def sourceBody643_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_22 sourceBody643_40

def sourceBody643_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 32)

def sourceBody643_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody643_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody643_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody643_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 18) sourceBody643_44 sourceBody643_45

def sourceBody643_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_46 sourceBody643_11

def sourceBody643_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody643_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody643_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody643_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody643_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody643_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody643_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody643_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody643_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody643_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 40, 22, 36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody643_0, 643, 6)) (some 116) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody643_30, 643, 7))

def sourceBody643_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_57 sourceBody643_11

def sourceBody643_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_58 sourceBody643_0

def sourceBody643_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_56 sourceBody643_59

def sourceBody643_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_55 sourceBody643_60

def sourceBody643_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_54 sourceBody643_61

def sourceBody643_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_53 sourceBody643_62

def sourceBody643_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_52 sourceBody643_63

def sourceBody643_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_51 sourceBody643_64

def sourceBody643_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_50 sourceBody643_65

def sourceBody643_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_49 sourceBody643_66

def sourceBody643_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody643_67 sourceBody643_0

def sourceBody643_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_68 sourceBody643_11

def sourceBody643_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_69 sourceBody643_0

def sourceBody643_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_48 sourceBody643_70

def sourceBody643_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_47 sourceBody643_71

def sourceBody643_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_43 sourceBody643_72

def sourceBody643_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_42 sourceBody643_73

def sourceBody643_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 42, 18, 30]

def sourceBody643_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_75 sourceBody643_0

def sourceBody643_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_52 sourceBody643_76

def sourceBody643_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_51 sourceBody643_77

def sourceBody643_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_50 sourceBody643_78

def sourceBody643_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_49 sourceBody643_79

def sourceBody643_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_74 sourceBody643_80

def sourceBody643_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_41 sourceBody643_81

def sourceBody643_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_82

def sourceBody643_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_83

def sourceBody643_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_84

def sourceBody643_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_85

def sourceBody643_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_86

def sourceBody643_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_87

def sourceBody643_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_88

def sourceBody643_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_89

def sourceBody643_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_21 sourceBody643_90

def sourceBody643_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_91

def sourceBody643_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody643_0 sourceBody643_92

def source643 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (643, 9, sourceBody643_93)
end InitECandidate.Proofs.WordStages
