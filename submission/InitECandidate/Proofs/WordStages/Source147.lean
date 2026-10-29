import InitECandidate.Proofs.WordStages.Source131
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody147_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody147_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody147_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody147_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody147_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 12) sourceBody147_2 sourceBody147_3

def sourceBody147_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody147_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_4 sourceBody147_5

def sourceBody147_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody147_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody147_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody147_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody147_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 2)) (some 84) ([18]) (some (18, sourceBody147_10, 147, 3))

def sourceBody147_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_11 sourceBody147_5

def sourceBody147_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_12 sourceBody147_8

def sourceBody147_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_9 sourceBody147_13

def sourceBody147_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody147_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody147_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody147_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 16

def sourceBody147_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_18 sourceBody147_8

def sourceBody147_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_17 sourceBody147_19

def sourceBody147_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_20 sourceBody147_8

def sourceBody147_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_16 sourceBody147_21

def sourceBody147_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_22

def sourceBody147_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_15 sourceBody147_23

def sourceBody147_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_24

def sourceBody147_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody147_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 4)) (some 84) ([18]) (some (18, sourceBody147_10, 147, 5))

def sourceBody147_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_27 sourceBody147_5

def sourceBody147_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_28 sourceBody147_8

def sourceBody147_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_26 sourceBody147_29

def sourceBody147_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_25 sourceBody147_30

def sourceBody147_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody147_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_32 sourceBody147_23

def sourceBody147_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_33

def sourceBody147_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_31 sourceBody147_34

def sourceBody147_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody147_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 6)) (some 84) ([18]) (some (18, sourceBody147_10, 147, 7))

def sourceBody147_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_37 sourceBody147_5

def sourceBody147_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_38 sourceBody147_8

def sourceBody147_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_36 sourceBody147_39

def sourceBody147_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_35 sourceBody147_40

def sourceBody147_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody147_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_42 sourceBody147_23

def sourceBody147_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_43

def sourceBody147_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_41 sourceBody147_44

def sourceBody147_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody147_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 8)) (some 84) ([18]) (some (18, sourceBody147_10, 147, 9))

def sourceBody147_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_47 sourceBody147_5

def sourceBody147_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_48 sourceBody147_8

def sourceBody147_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_46 sourceBody147_49

def sourceBody147_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_45 sourceBody147_50

def sourceBody147_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody147_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_52 sourceBody147_23

def sourceBody147_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_53

def sourceBody147_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_51 sourceBody147_54

def sourceBody147_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody147_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_56 sourceBody147_8

def sourceBody147_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_3 sourceBody147_57

def sourceBody147_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_55 sourceBody147_58

def sourceBody147_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_14 sourceBody147_59

def sourceBody147_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_60

def sourceBody147_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_61

def sourceBody147_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody147_62 sourceBody147_8

def sourceBody147_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_63 sourceBody147_5

def sourceBody147_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_64 sourceBody147_8

def sourceBody147_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_7 sourceBody147_65

def sourceBody147_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_6 sourceBody147_66

def sourceBody147_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_1 sourceBody147_67

def sourceBody147_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_0 sourceBody147_68

def sourceBody147_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody147_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 10)) (some 89) ([18, 12]) (some (18, sourceBody147_10, 147, 11))

def sourceBody147_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_71 sourceBody147_5

def sourceBody147_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_72 sourceBody147_8

def sourceBody147_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_70 sourceBody147_73

def sourceBody147_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_15 sourceBody147_74

def sourceBody147_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_75

def sourceBody147_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_76

def sourceBody147_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_69 sourceBody147_77

def sourceBody147_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody147_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 12)) (some 89) ([18, 12]) (some (18, sourceBody147_10, 147, 13))

def sourceBody147_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_80 sourceBody147_5

def sourceBody147_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_81 sourceBody147_8

def sourceBody147_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_79 sourceBody147_82

def sourceBody147_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_32 sourceBody147_83

def sourceBody147_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_84

def sourceBody147_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_85

def sourceBody147_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_78 sourceBody147_86

def sourceBody147_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody147_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody147_8, 147, 14)) (some 89) ([18, 12]) (some (18, sourceBody147_10, 147, 15))

def sourceBody147_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_89 sourceBody147_5

def sourceBody147_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_90 sourceBody147_8

def sourceBody147_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_88 sourceBody147_91

def sourceBody147_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_42 sourceBody147_92

def sourceBody147_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_93

def sourceBody147_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_94

def sourceBody147_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_87 sourceBody147_95

def sourceBody147_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody147_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody147_8, 147, 16)) (some 89) ([18, 12]) (some (18, sourceBody147_10, 147, 17))

def sourceBody147_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_98 sourceBody147_5

def sourceBody147_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_99 sourceBody147_8

def sourceBody147_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_97 sourceBody147_100

def sourceBody147_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_52 sourceBody147_101

def sourceBody147_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_102

def sourceBody147_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_8 sourceBody147_103

def sourceBody147_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_96 sourceBody147_104

def sourceBody147_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody147_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody147_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_107 sourceBody147_8

def sourceBody147_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_106 sourceBody147_108

def sourceBody147_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody147_105 sourceBody147_109

def source147 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (147, 6, sourceBody147_110)
end InitECandidate.Proofs.WordStages
