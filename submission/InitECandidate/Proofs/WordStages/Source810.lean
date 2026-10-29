import InitECandidate.Proofs.WordStages.Source794
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody810_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody810_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody810_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 2)) (some 69) ([]) (some (8, sourceBody810_1, 810, 3))

def sourceBody810_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody810_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_2 sourceBody810_3

def sourceBody810_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_4 sourceBody810_0

def sourceBody810_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody810_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody810_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 4)) (some 68) ([16]) (some (16, sourceBody810_7, 810, 5))

def sourceBody810_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_8 sourceBody810_3

def sourceBody810_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_9 sourceBody810_0

def sourceBody810_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_6 sourceBody810_10

def sourceBody810_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody810_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody810_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 6)) (some 68) ([12]) (some (12, sourceBody810_13, 810, 7))

def sourceBody810_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_14 sourceBody810_3

def sourceBody810_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_15 sourceBody810_0

def sourceBody810_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_12 sourceBody810_16

def sourceBody810_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody810_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody810_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody810_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 8)) (some 775) ([20, 6]) (some (20, sourceBody810_20, 810, 9))

def sourceBody810_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_21 sourceBody810_3

def sourceBody810_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_22 sourceBody810_0

def sourceBody810_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_19 sourceBody810_23

def sourceBody810_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_18 sourceBody810_24

def sourceBody810_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody810_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody810_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody810_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody810_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody810_28 sourceBody810_29

def sourceBody810_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_30 sourceBody810_3

def sourceBody810_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody810_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody810_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody810_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 10)) (some 775) ([20, 6]) (some (20, sourceBody810_20, 810, 11))

def sourceBody810_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_35 sourceBody810_3

def sourceBody810_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_36 sourceBody810_0

def sourceBody810_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_34 sourceBody810_37

def sourceBody810_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_33 sourceBody810_38

def sourceBody810_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody810_39 sourceBody810_0

def sourceBody810_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_40 sourceBody810_3

def sourceBody810_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_41 sourceBody810_0

def sourceBody810_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_32 sourceBody810_42

def sourceBody810_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_31 sourceBody810_43

def sourceBody810_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_27 sourceBody810_44

def sourceBody810_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_26 sourceBody810_45

def sourceBody810_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody810_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody810_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody810_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody810_0, 810, 12)) (some 70) ([6]) (some (6, sourceBody810_49, 810, 13))

def sourceBody810_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_50 sourceBody810_3

def sourceBody810_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_51 sourceBody810_0

def sourceBody810_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_48 sourceBody810_52

def sourceBody810_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_53

def sourceBody810_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_54

def sourceBody810_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody810_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody810_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_57 sourceBody810_0

def sourceBody810_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_56 sourceBody810_58

def sourceBody810_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_55 sourceBody810_59

def sourceBody810_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody810_60 sourceBody810_0

def sourceBody810_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_61 sourceBody810_3

def sourceBody810_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_62 sourceBody810_0

def sourceBody810_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_32 sourceBody810_63

def sourceBody810_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_31 sourceBody810_64

def sourceBody810_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_47 sourceBody810_65

def sourceBody810_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_26 sourceBody810_66

def sourceBody810_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_46 sourceBody810_67

def sourceBody810_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody810_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody810_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 14)) (some 771) ([6, 14, 10]) (some (6, sourceBody810_49, 810, 15))

def sourceBody810_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_71 sourceBody810_3

def sourceBody810_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_72 sourceBody810_0

def sourceBody810_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_70 sourceBody810_73

def sourceBody810_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_69 sourceBody810_74

def sourceBody810_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_19 sourceBody810_75

def sourceBody810_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_76

def sourceBody810_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_77

def sourceBody810_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_68 sourceBody810_78

def sourceBody810_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody810_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody810_0, 810, 16)) (some 776) ([6, 14]) (some (6, sourceBody810_49, 810, 17))

def sourceBody810_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_81 sourceBody810_3

def sourceBody810_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_82 sourceBody810_0

def sourceBody810_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_80 sourceBody810_83

def sourceBody810_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_19 sourceBody810_84

def sourceBody810_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_85

def sourceBody810_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_86

def sourceBody810_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_79 sourceBody810_87

def sourceBody810_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody810_0, 810, 18)) (some 70) ([6]) (some (6, sourceBody810_49, 810, 19))

def sourceBody810_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_89 sourceBody810_3

def sourceBody810_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_90 sourceBody810_0

def sourceBody810_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_48 sourceBody810_91

def sourceBody810_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_92

def sourceBody810_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_93

def sourceBody810_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_88 sourceBody810_94

def sourceBody810_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody810_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_96 sourceBody810_58

def sourceBody810_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_95 sourceBody810_97

def sourceBody810_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_25 sourceBody810_98

def sourceBody810_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_99

def sourceBody810_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_100

def sourceBody810_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_17 sourceBody810_101

def sourceBody810_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_102

def sourceBody810_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_103

def sourceBody810_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_11 sourceBody810_104

def sourceBody810_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_105

def sourceBody810_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_106

def sourceBody810_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_5 sourceBody810_107

def sourceBody810_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_108

def sourceBody810_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody810_0 sourceBody810_109

def source810 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (810, 3, sourceBody810_110)
end InitECandidate.Proofs.WordStages
