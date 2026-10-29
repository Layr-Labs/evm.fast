import InitECandidate.Proofs.WordStages.Source800
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody816_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody816_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody816_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 2)) (some 69) ([]) (some (8, sourceBody816_1, 816, 3))

def sourceBody816_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody816_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_2 sourceBody816_3

def sourceBody816_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_4 sourceBody816_0

def sourceBody816_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody816_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody816_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 4)) (some 68) ([16]) (some (16, sourceBody816_7, 816, 5))

def sourceBody816_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_8 sourceBody816_3

def sourceBody816_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_9 sourceBody816_0

def sourceBody816_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_6 sourceBody816_10

def sourceBody816_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody816_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody816_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 6)) (some 68) ([12]) (some (12, sourceBody816_13, 816, 7))

def sourceBody816_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_14 sourceBody816_3

def sourceBody816_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_15 sourceBody816_0

def sourceBody816_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_12 sourceBody816_16

def sourceBody816_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody816_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody816_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody816_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 8)) (some 727) ([20, 6]) (some (20, sourceBody816_20, 816, 9))

def sourceBody816_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_21 sourceBody816_3

def sourceBody816_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_22 sourceBody816_0

def sourceBody816_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_19 sourceBody816_23

def sourceBody816_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_18 sourceBody816_24

def sourceBody816_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody816_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody816_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody816_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody816_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody816_28 sourceBody816_29

def sourceBody816_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_30 sourceBody816_3

def sourceBody816_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody816_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody816_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody816_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 10)) (some 727) ([20, 6]) (some (20, sourceBody816_20, 816, 11))

def sourceBody816_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_35 sourceBody816_3

def sourceBody816_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_36 sourceBody816_0

def sourceBody816_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_34 sourceBody816_37

def sourceBody816_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_33 sourceBody816_38

def sourceBody816_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody816_39 sourceBody816_0

def sourceBody816_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_40 sourceBody816_3

def sourceBody816_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_41 sourceBody816_0

def sourceBody816_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_32 sourceBody816_42

def sourceBody816_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_31 sourceBody816_43

def sourceBody816_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_27 sourceBody816_44

def sourceBody816_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_26 sourceBody816_45

def sourceBody816_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody816_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody816_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody816_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody816_0, 816, 12)) (some 70) ([6]) (some (6, sourceBody816_49, 816, 13))

def sourceBody816_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_50 sourceBody816_3

def sourceBody816_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_51 sourceBody816_0

def sourceBody816_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_48 sourceBody816_52

def sourceBody816_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_53

def sourceBody816_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_54

def sourceBody816_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody816_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody816_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_57 sourceBody816_0

def sourceBody816_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_56 sourceBody816_58

def sourceBody816_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_55 sourceBody816_59

def sourceBody816_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody816_60 sourceBody816_0

def sourceBody816_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_61 sourceBody816_3

def sourceBody816_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_62 sourceBody816_0

def sourceBody816_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_32 sourceBody816_63

def sourceBody816_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_31 sourceBody816_64

def sourceBody816_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_47 sourceBody816_65

def sourceBody816_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_26 sourceBody816_66

def sourceBody816_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_46 sourceBody816_67

def sourceBody816_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody816_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody816_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 14)) (some 804) ([6, 14]) (some (6, sourceBody816_49, 816, 15))

def sourceBody816_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_71 sourceBody816_3

def sourceBody816_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_72 sourceBody816_0

def sourceBody816_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_70 sourceBody816_73

def sourceBody816_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_69 sourceBody816_74

def sourceBody816_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_75

def sourceBody816_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_76

def sourceBody816_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_68 sourceBody816_77

def sourceBody816_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody816_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody816_0, 816, 16)) (some 788) ([6, 14]) (some (6, sourceBody816_49, 816, 17))

def sourceBody816_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_80 sourceBody816_3

def sourceBody816_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_81 sourceBody816_0

def sourceBody816_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_79 sourceBody816_82

def sourceBody816_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_69 sourceBody816_83

def sourceBody816_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_84

def sourceBody816_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_85

def sourceBody816_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_78 sourceBody816_86

def sourceBody816_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody816_0, 816, 18)) (some 70) ([6]) (some (6, sourceBody816_49, 816, 19))

def sourceBody816_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_88 sourceBody816_3

def sourceBody816_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_89 sourceBody816_0

def sourceBody816_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_48 sourceBody816_90

def sourceBody816_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_91

def sourceBody816_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_92

def sourceBody816_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_87 sourceBody816_93

def sourceBody816_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody816_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_95 sourceBody816_58

def sourceBody816_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_94 sourceBody816_96

def sourceBody816_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_25 sourceBody816_97

def sourceBody816_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_98

def sourceBody816_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_99

def sourceBody816_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_17 sourceBody816_100

def sourceBody816_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_101

def sourceBody816_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_102

def sourceBody816_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_11 sourceBody816_103

def sourceBody816_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_104

def sourceBody816_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_105

def sourceBody816_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_5 sourceBody816_106

def sourceBody816_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_107

def sourceBody816_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody816_0 sourceBody816_108

def source816 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (816, 3, sourceBody816_109)
end InitECandidate.Proofs.WordStages
