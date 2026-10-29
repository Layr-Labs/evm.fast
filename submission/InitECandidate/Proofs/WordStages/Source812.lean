import InitECandidate.Proofs.WordStages.Source796
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody812_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody812_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody812_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 2)) (some 69) ([]) (some (8, sourceBody812_1, 812, 3))

def sourceBody812_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody812_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_2 sourceBody812_3

def sourceBody812_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_4 sourceBody812_0

def sourceBody812_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody812_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody812_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 4)) (some 68) ([16]) (some (16, sourceBody812_7, 812, 5))

def sourceBody812_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_8 sourceBody812_3

def sourceBody812_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_9 sourceBody812_0

def sourceBody812_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_6 sourceBody812_10

def sourceBody812_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody812_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody812_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 6)) (some 68) ([12]) (some (12, sourceBody812_13, 812, 7))

def sourceBody812_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_14 sourceBody812_3

def sourceBody812_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_15 sourceBody812_0

def sourceBody812_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_12 sourceBody812_16

def sourceBody812_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody812_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody812_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody812_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 8)) (some 787) ([20, 6]) (some (20, sourceBody812_20, 812, 9))

def sourceBody812_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_21 sourceBody812_3

def sourceBody812_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_22 sourceBody812_0

def sourceBody812_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_19 sourceBody812_23

def sourceBody812_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_18 sourceBody812_24

def sourceBody812_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody812_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody812_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody812_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody812_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody812_28 sourceBody812_29

def sourceBody812_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_30 sourceBody812_3

def sourceBody812_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody812_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 256#64])

def sourceBody812_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody812_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 10)) (some 787) ([20, 6]) (some (20, sourceBody812_20, 812, 11))

def sourceBody812_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_35 sourceBody812_3

def sourceBody812_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_36 sourceBody812_0

def sourceBody812_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_34 sourceBody812_37

def sourceBody812_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_33 sourceBody812_38

def sourceBody812_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody812_39 sourceBody812_0

def sourceBody812_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_40 sourceBody812_3

def sourceBody812_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_41 sourceBody812_0

def sourceBody812_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_32 sourceBody812_42

def sourceBody812_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_31 sourceBody812_43

def sourceBody812_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_27 sourceBody812_44

def sourceBody812_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_26 sourceBody812_45

def sourceBody812_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody812_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody812_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody812_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody812_0, 812, 12)) (some 70) ([6]) (some (6, sourceBody812_49, 812, 13))

def sourceBody812_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_50 sourceBody812_3

def sourceBody812_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_51 sourceBody812_0

def sourceBody812_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_48 sourceBody812_52

def sourceBody812_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_53

def sourceBody812_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_54

def sourceBody812_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody812_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody812_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_57 sourceBody812_0

def sourceBody812_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_56 sourceBody812_58

def sourceBody812_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_55 sourceBody812_59

def sourceBody812_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody812_60 sourceBody812_0

def sourceBody812_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_61 sourceBody812_3

def sourceBody812_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_62 sourceBody812_0

def sourceBody812_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_32 sourceBody812_63

def sourceBody812_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_31 sourceBody812_64

def sourceBody812_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_47 sourceBody812_65

def sourceBody812_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_26 sourceBody812_66

def sourceBody812_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_46 sourceBody812_67

def sourceBody812_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody812_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody812_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 14)) (some 783) ([6, 14, 10]) (some (6, sourceBody812_49, 812, 15))

def sourceBody812_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_71 sourceBody812_3

def sourceBody812_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_72 sourceBody812_0

def sourceBody812_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_70 sourceBody812_73

def sourceBody812_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_69 sourceBody812_74

def sourceBody812_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_19 sourceBody812_75

def sourceBody812_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_76

def sourceBody812_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_77

def sourceBody812_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_68 sourceBody812_78

def sourceBody812_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody812_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody812_0, 812, 16)) (some 788) ([6, 14]) (some (6, sourceBody812_49, 812, 17))

def sourceBody812_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_81 sourceBody812_3

def sourceBody812_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_82 sourceBody812_0

def sourceBody812_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_80 sourceBody812_83

def sourceBody812_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_19 sourceBody812_84

def sourceBody812_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_85

def sourceBody812_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_86

def sourceBody812_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_79 sourceBody812_87

def sourceBody812_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody812_0, 812, 18)) (some 70) ([6]) (some (6, sourceBody812_49, 812, 19))

def sourceBody812_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_89 sourceBody812_3

def sourceBody812_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_90 sourceBody812_0

def sourceBody812_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_48 sourceBody812_91

def sourceBody812_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_92

def sourceBody812_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_93

def sourceBody812_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_88 sourceBody812_94

def sourceBody812_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody812_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_96 sourceBody812_58

def sourceBody812_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_95 sourceBody812_97

def sourceBody812_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_25 sourceBody812_98

def sourceBody812_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_99

def sourceBody812_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_100

def sourceBody812_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_17 sourceBody812_101

def sourceBody812_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_102

def sourceBody812_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_103

def sourceBody812_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_11 sourceBody812_104

def sourceBody812_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_105

def sourceBody812_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_106

def sourceBody812_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_5 sourceBody812_107

def sourceBody812_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_108

def sourceBody812_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody812_0 sourceBody812_109

def source812 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (812, 3, sourceBody812_110)
end InitECandidate.Proofs.WordStages
