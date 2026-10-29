import InitECandidate.Proofs.WordStages.Source289
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody305_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody305_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody305_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody305_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody305_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody305_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody305_0, 305, 2)) (some 79) ([8, 18, 14]) (some (8, sourceBody305_4, 305, 3))

def sourceBody305_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody305_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_5 sourceBody305_6

def sourceBody305_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_7 sourceBody305_0

def sourceBody305_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_3 sourceBody305_8

def sourceBody305_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_2 sourceBody305_9

def sourceBody305_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_1 sourceBody305_10

def sourceBody305_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody305_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody305_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody305_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody305_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 14) sourceBody305_14 sourceBody305_15

def sourceBody305_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_16 sourceBody305_6

def sourceBody305_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody305_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody305_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody305_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_20 sourceBody305_0

def sourceBody305_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_19 sourceBody305_21

def sourceBody305_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody305_22 sourceBody305_0

def sourceBody305_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_23 sourceBody305_6

def sourceBody305_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_24 sourceBody305_0

def sourceBody305_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_18 sourceBody305_25

def sourceBody305_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_17 sourceBody305_26

def sourceBody305_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_13 sourceBody305_27

def sourceBody305_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_12 sourceBody305_28

def sourceBody305_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody305_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody305_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody305_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 18, 14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody305_0, 305, 4)) (some 294) ([24, 6]) (some (24, sourceBody305_32, 305, 5))

def sourceBody305_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_33 sourceBody305_6

def sourceBody305_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_34 sourceBody305_0

def sourceBody305_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_31 sourceBody305_35

def sourceBody305_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_30 sourceBody305_36

def sourceBody305_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody305_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody305_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody305_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody305_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 16) sourceBody305_40 sourceBody305_41

def sourceBody305_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_42 sourceBody305_6

def sourceBody305_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody305_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody305_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody305_0, 305, 6)) (some 286) ([6]) (some (6, sourceBody305_45, 305, 7))

def sourceBody305_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_46 sourceBody305_6

def sourceBody305_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_47 sourceBody305_0

def sourceBody305_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_40 sourceBody305_48

def sourceBody305_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_49

def sourceBody305_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_50

def sourceBody305_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody305_51 sourceBody305_0

def sourceBody305_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_52 sourceBody305_6

def sourceBody305_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_53 sourceBody305_0

def sourceBody305_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_44 sourceBody305_54

def sourceBody305_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_43 sourceBody305_55

def sourceBody305_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_39 sourceBody305_56

def sourceBody305_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_38 sourceBody305_57

def sourceBody305_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody305_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody305_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody305_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody305_0, 305, 8)) (some 304) ([6, 16, 12]) (some (6, sourceBody305_45, 305, 9))

def sourceBody305_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_62 sourceBody305_6

def sourceBody305_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_63 sourceBody305_0

def sourceBody305_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_61 sourceBody305_64

def sourceBody305_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_60 sourceBody305_65

def sourceBody305_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_59 sourceBody305_66

def sourceBody305_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody305_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody305_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody305_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody305_70 sourceBody305_39

def sourceBody305_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_71 sourceBody305_6

def sourceBody305_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody305_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody305_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody305_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody305_0, 305, 10)) (some 68) ([16]) (some (16, sourceBody305_75, 305, 11))

def sourceBody305_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_76 sourceBody305_6

def sourceBody305_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_77 sourceBody305_0

def sourceBody305_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_74 sourceBody305_78

def sourceBody305_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody305_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody305_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody305_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody305_0, 305, 12)) (some 77) ([12, 22, 10]) (some (12, sourceBody305_82, 305, 13))

def sourceBody305_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_83 sourceBody305_6

def sourceBody305_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_84 sourceBody305_0

def sourceBody305_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_81 sourceBody305_85

def sourceBody305_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_80 sourceBody305_86

def sourceBody305_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_44 sourceBody305_87

def sourceBody305_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_88

def sourceBody305_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_89

def sourceBody305_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody305_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody305_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 22

def sourceBody305_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_93 sourceBody305_0

def sourceBody305_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_92 sourceBody305_94

def sourceBody305_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_95 sourceBody305_0

def sourceBody305_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_44 sourceBody305_96

def sourceBody305_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_97

def sourceBody305_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_91 sourceBody305_98

def sourceBody305_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_99

def sourceBody305_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_90 sourceBody305_100

def sourceBody305_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_79 sourceBody305_101

def sourceBody305_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_102

def sourceBody305_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_103

def sourceBody305_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody305_104 sourceBody305_0

def sourceBody305_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_105 sourceBody305_6

def sourceBody305_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_106 sourceBody305_0

def sourceBody305_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_73 sourceBody305_107

def sourceBody305_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_72 sourceBody305_108

def sourceBody305_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_69 sourceBody305_109

def sourceBody305_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_68 sourceBody305_110

def sourceBody305_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody305_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody305_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_113 sourceBody305_0

def sourceBody305_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_112 sourceBody305_114

def sourceBody305_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_111 sourceBody305_115

def sourceBody305_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_67 sourceBody305_116

def sourceBody305_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_117

def sourceBody305_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_118

def sourceBody305_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_58 sourceBody305_119

def sourceBody305_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_37 sourceBody305_120

def sourceBody305_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_121

def sourceBody305_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_122

def sourceBody305_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_123

def sourceBody305_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_124

def sourceBody305_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_125

def sourceBody305_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_126

def sourceBody305_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_29 sourceBody305_127

def sourceBody305_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_11 sourceBody305_128

def sourceBody305_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_129

def sourceBody305_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody305_0 sourceBody305_130

def source305 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (305, 3, sourceBody305_131)
end InitECandidate.Proofs.WordStages
