import InitECandidate.Proofs.WordStages.Source533
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody549_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody549_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody549_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 26, 6, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody549_0, 549, 2)) (some 475) ([]) (some (14, sourceBody549_1, 549, 3))

def sourceBody549_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody549_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_2 sourceBody549_3

def sourceBody549_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_4 sourceBody549_0

def sourceBody549_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 280#64]))

def sourceBody549_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody549_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody549_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody549_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody549_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody549_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody549_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody549_0, 549, 4)) (some 147) ([4, 20, 12, 28, 8]) (some (4, sourceBody549_12, 549, 5))

def sourceBody549_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_13 sourceBody549_3

def sourceBody549_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_14 sourceBody549_0

def sourceBody549_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_11 sourceBody549_15

def sourceBody549_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_10 sourceBody549_16

def sourceBody549_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_9 sourceBody549_17

def sourceBody549_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_8 sourceBody549_18

def sourceBody549_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_7 sourceBody549_19

def sourceBody549_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_20

def sourceBody549_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_21

def sourceBody549_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 256#64]),
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody549_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody549_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody549_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody549_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody549_0, 549, 6)) (some 547) ([20, 12]) (some (20, sourceBody549_26, 549, 7))

def sourceBody549_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_27 sourceBody549_3

def sourceBody549_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_28 sourceBody549_0

def sourceBody549_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_25 sourceBody549_29

def sourceBody549_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_24 sourceBody549_30

def sourceBody549_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody549_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody549_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody549_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody549_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 28) sourceBody549_34 sourceBody549_35

def sourceBody549_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_36 sourceBody549_3

def sourceBody549_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody549_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody549_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody549_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody549_0, 549, 8)) (some 470) ([12]) (some (12, sourceBody549_40, 549, 9))

def sourceBody549_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_41 sourceBody549_3

def sourceBody549_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_42 sourceBody549_0

def sourceBody549_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_39 sourceBody549_43

def sourceBody549_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_44

def sourceBody549_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_45

def sourceBody549_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2100#64)

def sourceBody549_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody549_0, 549, 10)) (some 470) ([12]) (some (12, sourceBody549_40, 549, 11))

def sourceBody549_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_48 sourceBody549_3

def sourceBody549_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_49 sourceBody549_0

def sourceBody549_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_47 sourceBody549_50

def sourceBody549_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_51

def sourceBody549_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_52

def sourceBody549_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody549_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody549_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody549_0, 549, 12)) (some 548) ([12, 28]) (some (12, sourceBody549_40, 549, 13))

def sourceBody549_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_56 sourceBody549_3

def sourceBody549_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_57 sourceBody549_0

def sourceBody549_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_55 sourceBody549_58

def sourceBody549_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_54 sourceBody549_59

def sourceBody549_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_60

def sourceBody549_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_61

def sourceBody549_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_53 sourceBody549_62

def sourceBody549_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody549_46 sourceBody549_63

def sourceBody549_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_64 sourceBody549_3

def sourceBody549_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_65 sourceBody549_0

def sourceBody549_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_38 sourceBody549_66

def sourceBody549_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_37 sourceBody549_67

def sourceBody549_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_33 sourceBody549_68

def sourceBody549_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_32 sourceBody549_69

def sourceBody549_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody549_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody549_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody549_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 12, 28, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody549_0, 549, 14)) (some 410) ([24, 16]) (some (24, sourceBody549_73, 549, 15))

def sourceBody549_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_74 sourceBody549_3

def sourceBody549_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_75 sourceBody549_0

def sourceBody549_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_72 sourceBody549_76

def sourceBody549_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_71 sourceBody549_77

def sourceBody549_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody549_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody549_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 28)

def sourceBody549_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody549_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody549_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody549_0, 549, 16)) (some 476) ([16, 32, 2, 18]) (some (16, sourceBody549_83, 549, 17))

def sourceBody549_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_84 sourceBody549_3

def sourceBody549_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_85 sourceBody549_0

def sourceBody549_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_82 sourceBody549_86

def sourceBody549_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_81 sourceBody549_87

def sourceBody549_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_80 sourceBody549_88

def sourceBody549_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_79 sourceBody549_89

def sourceBody549_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_90

def sourceBody549_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_91

def sourceBody549_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody549_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody549_0, 549, 18)) (some 490) ([16]) (some (16, sourceBody549_83, 549, 19))

def sourceBody549_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_94 sourceBody549_3

def sourceBody549_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_95 sourceBody549_0

def sourceBody549_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_93 sourceBody549_96

def sourceBody549_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_97

def sourceBody549_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_98

def sourceBody549_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_92 sourceBody549_99

def sourceBody549_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody549_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody549_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_102 sourceBody549_0

def sourceBody549_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_101 sourceBody549_103

def sourceBody549_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_100 sourceBody549_104

def sourceBody549_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_78 sourceBody549_105

def sourceBody549_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_106

def sourceBody549_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_107

def sourceBody549_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_108

def sourceBody549_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_109

def sourceBody549_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_110

def sourceBody549_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_111

def sourceBody549_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_112

def sourceBody549_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_113

def sourceBody549_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_70 sourceBody549_114

def sourceBody549_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_31 sourceBody549_115

def sourceBody549_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_116

def sourceBody549_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_117

def sourceBody549_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_23 sourceBody549_118

def sourceBody549_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_119

def sourceBody549_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_22 sourceBody549_120

def sourceBody549_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_6 sourceBody549_121

def sourceBody549_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_122

def sourceBody549_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_5 sourceBody549_123

def sourceBody549_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_124

def sourceBody549_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_125

def sourceBody549_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_126

def sourceBody549_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_127

def sourceBody549_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_128

def sourceBody549_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_129

def sourceBody549_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_130

def sourceBody549_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody549_0 sourceBody549_131

def source549 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (549, 1, sourceBody549_132)
end InitECandidate.Proofs.WordStages
