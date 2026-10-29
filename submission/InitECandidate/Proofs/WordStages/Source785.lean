import InitECandidate.Proofs.WordStages.Source769
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody785_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody785_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody785_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 2)) (some 69) ([]) (some (8, sourceBody785_1, 785, 3))

def sourceBody785_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody785_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_2 sourceBody785_3

def sourceBody785_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_4 sourceBody785_0

def sourceBody785_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody785_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody785_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 4)) (some 68) ([14]) (some (14, sourceBody785_7, 785, 5))

def sourceBody785_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_8 sourceBody785_3

def sourceBody785_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_9 sourceBody785_0

def sourceBody785_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_6 sourceBody785_10

def sourceBody785_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody785_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody785_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 6)) (some 779) ([10]) (some (10, sourceBody785_13, 785, 7))

def sourceBody785_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_14 sourceBody785_3

def sourceBody785_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_15 sourceBody785_0

def sourceBody785_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_12 sourceBody785_16

def sourceBody785_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody785_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody785_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody785_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody785_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 6) sourceBody785_20 sourceBody785_21

def sourceBody785_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_22 sourceBody785_3

def sourceBody785_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody785_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody785_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody785_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody785_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 8)) (some 78) ([18, 6]) (some (18, sourceBody785_27, 785, 9))

def sourceBody785_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_28 sourceBody785_3

def sourceBody785_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_29 sourceBody785_0

def sourceBody785_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_26 sourceBody785_30

def sourceBody785_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_25 sourceBody785_31

def sourceBody785_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_32

def sourceBody785_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_33

def sourceBody785_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody785_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody785_0, 785, 10)) (some 70) ([18]) (some (18, sourceBody785_27, 785, 11))

def sourceBody785_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_36 sourceBody785_3

def sourceBody785_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_37 sourceBody785_0

def sourceBody785_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_35 sourceBody785_38

def sourceBody785_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_39

def sourceBody785_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_40

def sourceBody785_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_34 sourceBody785_41

def sourceBody785_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody785_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody785_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_44 sourceBody785_0

def sourceBody785_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_43 sourceBody785_45

def sourceBody785_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_42 sourceBody785_46

def sourceBody785_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody785_47 sourceBody785_0

def sourceBody785_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_48 sourceBody785_3

def sourceBody785_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_49 sourceBody785_0

def sourceBody785_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_24 sourceBody785_50

def sourceBody785_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_23 sourceBody785_51

def sourceBody785_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_19 sourceBody785_52

def sourceBody785_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_18 sourceBody785_53

def sourceBody785_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody785_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody785_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 12)) (some 743) ([18, 6]) (some (18, sourceBody785_27, 785, 13))

def sourceBody785_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_57 sourceBody785_3

def sourceBody785_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_58 sourceBody785_0

def sourceBody785_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_56 sourceBody785_59

def sourceBody785_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_55 sourceBody785_60

def sourceBody785_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_61

def sourceBody785_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_62

def sourceBody785_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_54 sourceBody785_63

def sourceBody785_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody785_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody785_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 14)) (some 739) ([18, 6, 12]) (some (18, sourceBody785_27, 785, 15))

def sourceBody785_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_67 sourceBody785_3

def sourceBody785_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_68 sourceBody785_0

def sourceBody785_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_66 sourceBody785_69

def sourceBody785_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_65 sourceBody785_70

def sourceBody785_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_25 sourceBody785_71

def sourceBody785_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_72

def sourceBody785_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_73

def sourceBody785_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_64 sourceBody785_74

def sourceBody785_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody785_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody785_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody785_0, 785, 16)) (some 739) ([18, 6, 12]) (some (18, sourceBody785_27, 785, 17))

def sourceBody785_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_78 sourceBody785_3

def sourceBody785_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_79 sourceBody785_0

def sourceBody785_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_66 sourceBody785_80

def sourceBody785_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_77 sourceBody785_81

def sourceBody785_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_76 sourceBody785_82

def sourceBody785_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_83

def sourceBody785_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_84

def sourceBody785_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_75 sourceBody785_85

def sourceBody785_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody785_0, 785, 18)) (some 70) ([18]) (some (18, sourceBody785_27, 785, 19))

def sourceBody785_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_87 sourceBody785_3

def sourceBody785_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_88 sourceBody785_0

def sourceBody785_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_35 sourceBody785_89

def sourceBody785_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_90

def sourceBody785_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_91

def sourceBody785_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_86 sourceBody785_92

def sourceBody785_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody785_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_94 sourceBody785_45

def sourceBody785_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_93 sourceBody785_95

def sourceBody785_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_17 sourceBody785_96

def sourceBody785_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_97

def sourceBody785_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_98

def sourceBody785_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_11 sourceBody785_99

def sourceBody785_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_100

def sourceBody785_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_101

def sourceBody785_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_5 sourceBody785_102

def sourceBody785_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_103

def sourceBody785_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody785_0 sourceBody785_104

def source785 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (785, 3, sourceBody785_105)
end InitECandidate.Proofs.WordStages
