import InitECandidate.Proofs.WordStages.Source604
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody620_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody620_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody620_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody620_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody620_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody620_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody620_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody620_0, 620, 2)) (some 102) ([24, 34, 20, 32]) (some (24, sourceBody620_5, 620, 3))

def sourceBody620_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody620_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_6 sourceBody620_7

def sourceBody620_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_8 sourceBody620_0

def sourceBody620_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_4 sourceBody620_9

def sourceBody620_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_3 sourceBody620_10

def sourceBody620_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_2 sourceBody620_11

def sourceBody620_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_1 sourceBody620_12

def sourceBody620_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody620_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody620_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody620_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody620_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody620_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 32) sourceBody620_17 sourceBody620_18

def sourceBody620_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_19 sourceBody620_7

def sourceBody620_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody620_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 2300#64)

def sourceBody620_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_22 sourceBody620_0

def sourceBody620_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_23 sourceBody620_0

def sourceBody620_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody620_24 sourceBody620_0

def sourceBody620_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_25 sourceBody620_7

def sourceBody620_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_26 sourceBody620_0

def sourceBody620_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_21 sourceBody620_27

def sourceBody620_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_20 sourceBody620_28

def sourceBody620_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_16 sourceBody620_29

def sourceBody620_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_15 sourceBody620_30

def sourceBody620_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody620_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody620_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody620_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody620_0, 620, 4)) (some 463) ([20, 32]) (some (20, sourceBody620_34, 620, 5))

def sourceBody620_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_35 sourceBody620_7

def sourceBody620_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_36 sourceBody620_0

def sourceBody620_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_33 sourceBody620_37

def sourceBody620_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_32 sourceBody620_38

def sourceBody620_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody620_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody620_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody620_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 32 (Flapjack.WordRegImm.reg 26) sourceBody620_42 sourceBody620_16

def sourceBody620_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_43 sourceBody620_7

def sourceBody620_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody620_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody620_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody620_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody620_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody620_0, 620, 6)) (some 463) ([32, 26]) (some (32, sourceBody620_48, 620, 7))

def sourceBody620_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_49 sourceBody620_7

def sourceBody620_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_50 sourceBody620_0

def sourceBody620_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_47 sourceBody620_51

def sourceBody620_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_46 sourceBody620_52

def sourceBody620_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody620_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody620_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody620_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody620_0, 620, 8)) (some 463) ([26, 36]) (some (26, sourceBody620_56, 620, 9))

def sourceBody620_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_57 sourceBody620_7

def sourceBody620_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_58 sourceBody620_0

def sourceBody620_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_55 sourceBody620_59

def sourceBody620_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_54 sourceBody620_60

def sourceBody620_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26, 36]

def sourceBody620_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_62 sourceBody620_0

def sourceBody620_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_45 sourceBody620_63

def sourceBody620_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_21 sourceBody620_64

def sourceBody620_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_61 sourceBody620_65

def sourceBody620_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_66

def sourceBody620_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_67

def sourceBody620_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_53 sourceBody620_68

def sourceBody620_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_69

def sourceBody620_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_70

def sourceBody620_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody620_71 sourceBody620_0

def sourceBody620_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_72 sourceBody620_7

def sourceBody620_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_73 sourceBody620_0

def sourceBody620_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_45 sourceBody620_74

def sourceBody620_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_44 sourceBody620_75

def sourceBody620_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_41 sourceBody620_76

def sourceBody620_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_40 sourceBody620_77

def sourceBody620_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14],
      Flapjack.WordLangExpHOL.var 16])

def sourceBody620_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 20,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 6#64)])

def sourceBody620_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody620_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody620_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody620_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody620_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 28) sourceBody620_83 sourceBody620_84

def sourceBody620_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_85 sourceBody620_7

def sourceBody620_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody620_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody620_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_88 sourceBody620_0

def sourceBody620_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_89 sourceBody620_0

def sourceBody620_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody620_90 sourceBody620_0

def sourceBody620_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_91 sourceBody620_7

def sourceBody620_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_92 sourceBody620_0

def sourceBody620_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_87 sourceBody620_93

def sourceBody620_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_86 sourceBody620_94

def sourceBody620_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_82 sourceBody620_95

def sourceBody620_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_81 sourceBody620_96

def sourceBody620_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 16])

def sourceBody620_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 24])

def sourceBody620_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36, 18]

def sourceBody620_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_100 sourceBody620_0

def sourceBody620_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_99 sourceBody620_101

def sourceBody620_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_98 sourceBody620_102

def sourceBody620_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_97 sourceBody620_103

def sourceBody620_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_54 sourceBody620_104

def sourceBody620_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_105

def sourceBody620_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_80 sourceBody620_106

def sourceBody620_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_107

def sourceBody620_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_79 sourceBody620_108

def sourceBody620_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_109

def sourceBody620_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_78 sourceBody620_110

def sourceBody620_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_39 sourceBody620_111

def sourceBody620_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_112

def sourceBody620_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_113

def sourceBody620_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_31 sourceBody620_114

def sourceBody620_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_14 sourceBody620_115

def sourceBody620_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_116

def sourceBody620_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_13 sourceBody620_117

def sourceBody620_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_118

def sourceBody620_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody620_0 sourceBody620_119

def source620 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (620, 9, sourceBody620_120)
end InitECandidate.Proofs.WordStages
