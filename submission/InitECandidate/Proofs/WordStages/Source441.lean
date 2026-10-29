import InitECandidate.Proofs.WordStages.Source425
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody441_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody441_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody441_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody441_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody441_0, 441, 2)) (some 439) ([30]) (some (30, sourceBody441_2, 441, 3))

def sourceBody441_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody441_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_3 sourceBody441_4

def sourceBody441_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_5 sourceBody441_0

def sourceBody441_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_1 sourceBody441_6

def sourceBody441_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody441_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody441_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody441_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody441_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody441_0, 441, 4)) (some 186) ([20, 32]) (some (20, sourceBody441_11, 441, 5))

def sourceBody441_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_12 sourceBody441_4

def sourceBody441_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_13 sourceBody441_0

def sourceBody441_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_10 sourceBody441_14

def sourceBody441_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_9 sourceBody441_15

def sourceBody441_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody441_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody441_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody441_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody441_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 38) sourceBody441_19 sourceBody441_20

def sourceBody441_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_21 sourceBody441_4

def sourceBody441_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody441_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody441_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody441_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody441_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody441_0, 441, 6)) (some 435) ([32, 26]) (some (32, sourceBody441_26, 441, 7))

def sourceBody441_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_27 sourceBody441_4

def sourceBody441_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_28 sourceBody441_0

def sourceBody441_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_25 sourceBody441_29

def sourceBody441_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_24 sourceBody441_30

def sourceBody441_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody441_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 4)

def sourceBody441_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody441_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody441_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody441_0, 441, 8)) (some 192) ([26, 38, 16]) (some (26, sourceBody441_35, 441, 9))

def sourceBody441_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_36 sourceBody441_4

def sourceBody441_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_37 sourceBody441_0

def sourceBody441_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_34 sourceBody441_38

def sourceBody441_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_33 sourceBody441_39

def sourceBody441_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_32 sourceBody441_40

def sourceBody441_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_41

def sourceBody441_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_42

def sourceBody441_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_31 sourceBody441_43

def sourceBody441_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody441_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_45 sourceBody441_0

def sourceBody441_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_46 sourceBody441_0

def sourceBody441_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody441_44 sourceBody441_47

def sourceBody441_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_48 sourceBody441_4

def sourceBody441_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_49 sourceBody441_0

def sourceBody441_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_23 sourceBody441_50

def sourceBody441_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_22 sourceBody441_51

def sourceBody441_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_18 sourceBody441_52

def sourceBody441_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_17 sourceBody441_53

def sourceBody441_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody441_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody441_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody441_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody441_0, 441, 10)) (some 440) ([26, 38, 16]) (some (26, sourceBody441_35, 441, 11))

def sourceBody441_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_58 sourceBody441_4

def sourceBody441_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_59 sourceBody441_0

def sourceBody441_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_57 sourceBody441_60

def sourceBody441_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_56 sourceBody441_61

def sourceBody441_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_55 sourceBody441_62

def sourceBody441_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody441_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody441_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody441_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody441_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody441_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody441_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 34

def sourceBody441_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_70 sourceBody441_0

def sourceBody441_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_69 sourceBody441_71

def sourceBody441_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody441_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])
  34

def sourceBody441_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_74 sourceBody441_0

def sourceBody441_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_73 sourceBody441_75

def sourceBody441_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody441_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 16#64])
  34

def sourceBody441_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_78 sourceBody441_0

def sourceBody441_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_77 sourceBody441_79

def sourceBody441_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody441_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 24#64])
  34

def sourceBody441_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_82 sourceBody441_0

def sourceBody441_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_81 sourceBody441_83

def sourceBody441_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_84 sourceBody441_0

def sourceBody441_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_80 sourceBody441_85

def sourceBody441_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_76 sourceBody441_86

def sourceBody441_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_72 sourceBody441_87

def sourceBody441_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_68 sourceBody441_88

def sourceBody441_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_89

def sourceBody441_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_67 sourceBody441_90

def sourceBody441_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_91

def sourceBody441_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_66 sourceBody441_92

def sourceBody441_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_93

def sourceBody441_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_65 sourceBody441_94

def sourceBody441_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_95

def sourceBody441_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_64 sourceBody441_96

def sourceBody441_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_97

def sourceBody441_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody441_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_99 sourceBody441_0

def sourceBody441_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_20 sourceBody441_100

def sourceBody441_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_98 sourceBody441_101

def sourceBody441_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_63 sourceBody441_102

def sourceBody441_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_103

def sourceBody441_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_104

def sourceBody441_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_54 sourceBody441_105

def sourceBody441_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_106

def sourceBody441_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_107

def sourceBody441_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_16 sourceBody441_108

def sourceBody441_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_109

def sourceBody441_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_110

def sourceBody441_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_111

def sourceBody441_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_112

def sourceBody441_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_8 sourceBody441_113

def sourceBody441_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_114

def sourceBody441_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_7 sourceBody441_115

def sourceBody441_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_116

def sourceBody441_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody441_0 sourceBody441_117

def source441 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (441, 8, sourceBody441_118)
end InitECandidate.Proofs.WordStages
