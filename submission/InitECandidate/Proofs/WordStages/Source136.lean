import InitECandidate.Proofs.WordStages.Source120
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody136_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 22,
      Flapjack.WordLangExpHOL.var 24])

def sourceBody136_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody136_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 58) sourceBody136_2 sourceBody136_3

def sourceBody136_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody136_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_4 sourceBody136_5

def sourceBody136_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 40)

def sourceBody136_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48, 40, 58, 26]

def sourceBody136_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody136_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_10 sourceBody136_11

def sourceBody136_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_9 sourceBody136_12

def sourceBody136_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_1 sourceBody136_13

def sourceBody136_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_3 sourceBody136_14

def sourceBody136_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_8 sourceBody136_15

def sourceBody136_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody136_16 sourceBody136_11

def sourceBody136_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_17 sourceBody136_5

def sourceBody136_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_18 sourceBody136_11

def sourceBody136_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_7 sourceBody136_19

def sourceBody136_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_6 sourceBody136_20

def sourceBody136_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_1 sourceBody136_21

def sourceBody136_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_0 sourceBody136_22

def sourceBody136_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.const 424#64])

def sourceBody136_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody136_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody136_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 58 (Flapjack.WordRegImm.reg 26) sourceBody136_26 sourceBody136_1

def sourceBody136_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_27 sourceBody136_5

def sourceBody136_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 58)

def sourceBody136_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody136_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 10)

def sourceBody136_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody136_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody136_11, 136, 2)) (some 119) ([26, 42]) (some (26, sourceBody136_32, 136, 3))

def sourceBody136_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_33 sourceBody136_5

def sourceBody136_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_34 sourceBody136_11

def sourceBody136_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_31 sourceBody136_35

def sourceBody136_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_30 sourceBody136_36

def sourceBody136_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody136_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 34) sourceBody136_39 sourceBody136_40

def sourceBody136_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_41 sourceBody136_5

def sourceBody136_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 42)

def sourceBody136_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody136_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def sourceBody136_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody136_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 24)

def sourceBody136_49 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 131) ([0, 26, 42, 34, 52, 30, 46, 38, 56]) (none)

def sourceBody136_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_49 sourceBody136_11

def sourceBody136_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_48 sourceBody136_50

def sourceBody136_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_47 sourceBody136_51

def sourceBody136_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_46 sourceBody136_52

def sourceBody136_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_45 sourceBody136_53

def sourceBody136_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_44 sourceBody136_54

def sourceBody136_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_38 sourceBody136_55

def sourceBody136_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_40 sourceBody136_56

def sourceBody136_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_7 sourceBody136_57

def sourceBody136_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody136_58 sourceBody136_11

def sourceBody136_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_59 sourceBody136_5

def sourceBody136_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_60 sourceBody136_11

def sourceBody136_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_43 sourceBody136_61

def sourceBody136_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_42 sourceBody136_62

def sourceBody136_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_38 sourceBody136_63

def sourceBody136_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_29 sourceBody136_64

def sourceBody136_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody136_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody136_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 58)

def sourceBody136_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody136_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody136_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody136_11, 136, 4)) (some 124) ([42, 34, 52, 30, 46]) (some (42, sourceBody136_71, 136, 5))

def sourceBody136_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_72 sourceBody136_5

def sourceBody136_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_73 sourceBody136_11

def sourceBody136_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_70 sourceBody136_74

def sourceBody136_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_69 sourceBody136_75

def sourceBody136_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_68 sourceBody136_76

def sourceBody136_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_67 sourceBody136_77

def sourceBody136_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_66 sourceBody136_78

def sourceBody136_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_79

def sourceBody136_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_80

def sourceBody136_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_65 sourceBody136_81

def sourceBody136_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 48)

def sourceBody136_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody136_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody136_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 20)

def sourceBody136_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody136_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 24)

def sourceBody136_89 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 128) ([0, 26, 42, 34, 52, 30, 46]) (none)

def sourceBody136_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_89 sourceBody136_11

def sourceBody136_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_88 sourceBody136_90

def sourceBody136_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_87 sourceBody136_91

def sourceBody136_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_86 sourceBody136_92

def sourceBody136_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_85 sourceBody136_93

def sourceBody136_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_84 sourceBody136_94

def sourceBody136_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_83 sourceBody136_95

def sourceBody136_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_82 sourceBody136_96

def sourceBody136_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_37 sourceBody136_97

def sourceBody136_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_98

def sourceBody136_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_99

def sourceBody136_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_100

def sourceBody136_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_101

def sourceBody136_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody136_102 sourceBody136_11

def sourceBody136_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_103 sourceBody136_5

def sourceBody136_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_104 sourceBody136_11

def sourceBody136_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_29 sourceBody136_105

def sourceBody136_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_28 sourceBody136_106

def sourceBody136_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_9 sourceBody136_107

def sourceBody136_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_25 sourceBody136_108

def sourceBody136_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody136_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 4)

def sourceBody136_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody136_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody136_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody136_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody136_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody136_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def sourceBody136_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody136_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 58, 26, 42, 34, 52, 30, 46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody136_11, 136, 6)) (some 121) ([38, 56, 28, 44, 36, 54, 32, 50]) (some (38, sourceBody136_118, 136, 7))

def sourceBody136_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_119 sourceBody136_5

def sourceBody136_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_120 sourceBody136_11

def sourceBody136_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_117 sourceBody136_121

def sourceBody136_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_116 sourceBody136_122

def sourceBody136_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_115 sourceBody136_123

def sourceBody136_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_114 sourceBody136_124

def sourceBody136_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_113 sourceBody136_125

def sourceBody136_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_112 sourceBody136_126

def sourceBody136_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_111 sourceBody136_127

def sourceBody136_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_110 sourceBody136_128

def sourceBody136_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 48)

def sourceBody136_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 40)

def sourceBody136_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 58)

def sourceBody136_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 26)

def sourceBody136_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 42)

def sourceBody136_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody136_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody136_11, 136, 8)) (some 124) ([56, 28, 44, 36, 54]) (some (56, sourceBody136_135, 136, 9))

def sourceBody136_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_136 sourceBody136_5

def sourceBody136_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_137 sourceBody136_11

def sourceBody136_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_134 sourceBody136_138

def sourceBody136_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_133 sourceBody136_139

def sourceBody136_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_132 sourceBody136_140

def sourceBody136_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_131 sourceBody136_141

def sourceBody136_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_130 sourceBody136_142

def sourceBody136_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_143

def sourceBody136_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_144

def sourceBody136_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody136_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody136_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 52)

def sourceBody136_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody136_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 46)

def sourceBody136_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody136_11, 136, 10)) (some 124) ([56, 28, 44, 36, 54]) (some (56, sourceBody136_135, 136, 11))

def sourceBody136_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_151 sourceBody136_5

def sourceBody136_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_152 sourceBody136_11

def sourceBody136_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_150 sourceBody136_153

def sourceBody136_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_149 sourceBody136_154

def sourceBody136_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_148 sourceBody136_155

def sourceBody136_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_147 sourceBody136_156

def sourceBody136_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_146 sourceBody136_157

def sourceBody136_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_158

def sourceBody136_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_159

def sourceBody136_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_145 sourceBody136_160

def sourceBody136_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def sourceBody136_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody136_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody136_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 20)

def sourceBody136_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody136_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 24)

def sourceBody136_168 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 128) ([0, 38, 56, 28, 44, 36, 54]) (none)

def sourceBody136_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_168 sourceBody136_11

def sourceBody136_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_167 sourceBody136_169

def sourceBody136_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_166 sourceBody136_170

def sourceBody136_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_165 sourceBody136_171

def sourceBody136_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_164 sourceBody136_172

def sourceBody136_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_163 sourceBody136_173

def sourceBody136_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_162 sourceBody136_174

def sourceBody136_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_161 sourceBody136_175

def sourceBody136_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_129 sourceBody136_176

def sourceBody136_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_177

def sourceBody136_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_178

def sourceBody136_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_179

def sourceBody136_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_180

def sourceBody136_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_181

def sourceBody136_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_182

def sourceBody136_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_183

def sourceBody136_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_184

def sourceBody136_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_185

def sourceBody136_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_186

def sourceBody136_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_187

def sourceBody136_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_188

def sourceBody136_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_189

def sourceBody136_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_190

def sourceBody136_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_191

def sourceBody136_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_192

def sourceBody136_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_109 sourceBody136_193

def sourceBody136_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_24 sourceBody136_194

def sourceBody136_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_11 sourceBody136_195

def sourceBody136_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody136_23 sourceBody136_196

def source136 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (136, 13, sourceBody136_197)
end InitECandidate.Proofs.WordStages
