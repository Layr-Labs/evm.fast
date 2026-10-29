import InitECandidate.Proofs.WordStages.Source729
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody745_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody745_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody745_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody745_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody745_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody745_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody745_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody745_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody745_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody745_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody745_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody745_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody745_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 40)

def sourceBody745_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody745_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody745_0, 745, 2)) (some 723) ([26, 18, 38, 12, 32, 22]) (some (26, sourceBody745_13, 745, 3))

def sourceBody745_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody745_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_14 sourceBody745_15

def sourceBody745_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_16 sourceBody745_0

def sourceBody745_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_12 sourceBody745_17

def sourceBody745_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_11 sourceBody745_18

def sourceBody745_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_10 sourceBody745_19

def sourceBody745_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_9 sourceBody745_20

def sourceBody745_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_8 sourceBody745_21

def sourceBody745_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_7 sourceBody745_22

def sourceBody745_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody745_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody745_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody745_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody745_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 38) sourceBody745_26 sourceBody745_27

def sourceBody745_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_28 sourceBody745_15

def sourceBody745_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody745_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody745_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody745_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_32 sourceBody745_0

def sourceBody745_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_31 sourceBody745_33

def sourceBody745_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody745_34 sourceBody745_0

def sourceBody745_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_35 sourceBody745_15

def sourceBody745_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_36 sourceBody745_0

def sourceBody745_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_30 sourceBody745_37

def sourceBody745_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_29 sourceBody745_38

def sourceBody745_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_25 sourceBody745_39

def sourceBody745_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_24 sourceBody745_40

def sourceBody745_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody745_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody745_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody745_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody745_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody745_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody745_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody745_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody745_0, 745, 4)) (some 705) ([18, 38, 12, 32, 22, 42]) (some (18, sourceBody745_48, 745, 5))

def sourceBody745_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_49 sourceBody745_15

def sourceBody745_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_50 sourceBody745_0

def sourceBody745_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_47 sourceBody745_51

def sourceBody745_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_46 sourceBody745_52

def sourceBody745_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_45 sourceBody745_53

def sourceBody745_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_44 sourceBody745_54

def sourceBody745_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_43 sourceBody745_55

def sourceBody745_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_42 sourceBody745_56

def sourceBody745_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 26)

def sourceBody745_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody745_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody745_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 12) sourceBody745_25 sourceBody745_60

def sourceBody745_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_61 sourceBody745_15

def sourceBody745_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 38)

def sourceBody745_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody745_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_64 sourceBody745_0

def sourceBody745_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_27 sourceBody745_65

def sourceBody745_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody745_66 sourceBody745_0

def sourceBody745_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_67 sourceBody745_15

def sourceBody745_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_68 sourceBody745_0

def sourceBody745_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_63 sourceBody745_69

def sourceBody745_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_62 sourceBody745_70

def sourceBody745_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_59 sourceBody745_71

def sourceBody745_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_58 sourceBody745_72

def sourceBody745_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody745_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody745_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody745_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody745_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody745_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody745_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody745_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody745_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody745_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody745_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody745_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody745_86 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 723) ([0, 4, 24, 16, 36, 10, 30]) (none)

def sourceBody745_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_86 sourceBody745_0

def sourceBody745_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_85 sourceBody745_87

def sourceBody745_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_84 sourceBody745_88

def sourceBody745_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_83 sourceBody745_89

def sourceBody745_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_82 sourceBody745_90

def sourceBody745_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_81 sourceBody745_91

def sourceBody745_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_80 sourceBody745_92

def sourceBody745_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_79 sourceBody745_93

def sourceBody745_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_94

def sourceBody745_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_78 sourceBody745_95

def sourceBody745_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_96

def sourceBody745_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_77 sourceBody745_97

def sourceBody745_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_98

def sourceBody745_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_76 sourceBody745_99

def sourceBody745_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_100

def sourceBody745_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_75 sourceBody745_101

def sourceBody745_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_102

def sourceBody745_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_74 sourceBody745_103

def sourceBody745_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_104

def sourceBody745_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_73 sourceBody745_105

def sourceBody745_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_57 sourceBody745_106

def sourceBody745_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_107

def sourceBody745_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_108

def sourceBody745_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_41 sourceBody745_109

def sourceBody745_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_23 sourceBody745_110

def sourceBody745_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_111

def sourceBody745_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_112

def sourceBody745_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_6 sourceBody745_113

def sourceBody745_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_114

def sourceBody745_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_5 sourceBody745_115

def sourceBody745_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_116

def sourceBody745_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_4 sourceBody745_117

def sourceBody745_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_118

def sourceBody745_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_3 sourceBody745_119

def sourceBody745_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_120

def sourceBody745_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_2 sourceBody745_121

def sourceBody745_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_122

def sourceBody745_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_1 sourceBody745_123

def sourceBody745_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody745_0 sourceBody745_124

def source745 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (745, 2, sourceBody745_125)
end InitECandidate.Proofs.WordStages
