import InitECandidate.Proofs.WordStages.Source582
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody598_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody598_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody598_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody598_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody598_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 18) sourceBody598_4 sourceBody598_5

def sourceBody598_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody598_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_6 sourceBody598_7

def sourceBody598_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody598_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody598_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody598_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody598_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody598_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 22)

def sourceBody598_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody598_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody598_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody598_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody598_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody598_0, 598, 2)) (some 102) ([2, 16, 10, 24]) (some (2, sourceBody598_18, 598, 3))

def sourceBody598_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_19 sourceBody598_7

def sourceBody598_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_20 sourceBody598_0

def sourceBody598_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_17 sourceBody598_21

def sourceBody598_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_16 sourceBody598_22

def sourceBody598_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_15 sourceBody598_23

def sourceBody598_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_14 sourceBody598_24

def sourceBody598_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody598_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody598_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 10) sourceBody598_28 sourceBody598_29

def sourceBody598_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_30 sourceBody598_7

def sourceBody598_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody598_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody598_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody598_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody598_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody598_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody598_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody598_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody598_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody598_0, 598, 4)) (some 427) ([16, 10, 24, 6, 20, 14]) (some (16, sourceBody598_39, 598, 5))

def sourceBody598_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_40 sourceBody598_7

def sourceBody598_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_41 sourceBody598_0

def sourceBody598_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_38 sourceBody598_42

def sourceBody598_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_37 sourceBody598_43

def sourceBody598_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_36 sourceBody598_44

def sourceBody598_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_35 sourceBody598_45

def sourceBody598_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_34 sourceBody598_46

def sourceBody598_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_33 sourceBody598_47

def sourceBody598_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_48

def sourceBody598_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_49

def sourceBody598_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody598_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody598_0, 598, 6)) (some 79) ([16, 10, 24]) (some (16, sourceBody598_39, 598, 7))

def sourceBody598_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_52 sourceBody598_7

def sourceBody598_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_53 sourceBody598_0

def sourceBody598_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_51 sourceBody598_54

def sourceBody598_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_34 sourceBody598_55

def sourceBody598_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_33 sourceBody598_56

def sourceBody598_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody598_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody598_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 24) sourceBody598_60 sourceBody598_27

def sourceBody598_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_61 sourceBody598_7

def sourceBody598_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody598_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody598_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody598_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody598_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody598_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody598_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody598_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody598_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody598_0, 598, 8)) (some 585) ([10, 24, 6, 20, 14, 28]) (some (10, sourceBody598_70, 598, 9))

def sourceBody598_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_71 sourceBody598_7

def sourceBody598_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_72 sourceBody598_0

def sourceBody598_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_69 sourceBody598_73

def sourceBody598_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_68 sourceBody598_74

def sourceBody598_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_67 sourceBody598_75

def sourceBody598_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_66 sourceBody598_76

def sourceBody598_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_65 sourceBody598_77

def sourceBody598_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_64 sourceBody598_78

def sourceBody598_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_79

def sourceBody598_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_80

def sourceBody598_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody598_81 sourceBody598_0

def sourceBody598_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_82 sourceBody598_7

def sourceBody598_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_83 sourceBody598_0

def sourceBody598_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_63 sourceBody598_84

def sourceBody598_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_62 sourceBody598_85

def sourceBody598_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_59 sourceBody598_86

def sourceBody598_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_58 sourceBody598_87

def sourceBody598_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_57 sourceBody598_88

def sourceBody598_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_89

def sourceBody598_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_90

def sourceBody598_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_50 sourceBody598_91

def sourceBody598_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody598_92 sourceBody598_0

def sourceBody598_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_93 sourceBody598_7

def sourceBody598_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_94 sourceBody598_0

def sourceBody598_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_32 sourceBody598_95

def sourceBody598_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_31 sourceBody598_96

def sourceBody598_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_27 sourceBody598_97

def sourceBody598_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_26 sourceBody598_98

def sourceBody598_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_25 sourceBody598_99

def sourceBody598_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_100

def sourceBody598_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_101

def sourceBody598_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_13 sourceBody598_102

def sourceBody598_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_103

def sourceBody598_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_12 sourceBody598_104

def sourceBody598_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_105

def sourceBody598_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_11 sourceBody598_106

def sourceBody598_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_107

def sourceBody598_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_10 sourceBody598_108

def sourceBody598_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_109

def sourceBody598_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody598_110 sourceBody598_0

def sourceBody598_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_111 sourceBody598_7

def sourceBody598_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_112 sourceBody598_0

def sourceBody598_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_9 sourceBody598_113

def sourceBody598_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_8 sourceBody598_114

def sourceBody598_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_3 sourceBody598_115

def sourceBody598_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_2 sourceBody598_116

def sourceBody598_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody598_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody598_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody598_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 12) sourceBody598_121 sourceBody598_3

def sourceBody598_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_122 sourceBody598_7

def sourceBody598_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody598_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody598_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody598_0, 598, 10)) (some 829) ([18]) (some (18, sourceBody598_125, 598, 11))

def sourceBody598_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_126 sourceBody598_7

def sourceBody598_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_127 sourceBody598_0

def sourceBody598_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_119 sourceBody598_128

def sourceBody598_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody598_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody598_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 26) sourceBody598_131 sourceBody598_120

def sourceBody598_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_132 sourceBody598_7

def sourceBody598_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody598_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody598_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 26) sourceBody598_131 sourceBody598_120

def sourceBody598_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_136 sourceBody598_7

def sourceBody598_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody598_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody598_0, 598, 12)) (some 837) ([12]) (some (12, sourceBody598_138, 598, 13))

def sourceBody598_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_139 sourceBody598_7

def sourceBody598_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_140 sourceBody598_0

def sourceBody598_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_9 sourceBody598_141

def sourceBody598_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_142

def sourceBody598_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_143

def sourceBody598_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody598_144 sourceBody598_0

def sourceBody598_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_145 sourceBody598_7

def sourceBody598_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_146 sourceBody598_0

def sourceBody598_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_134 sourceBody598_147

def sourceBody598_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_137 sourceBody598_148

def sourceBody598_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_130 sourceBody598_149

def sourceBody598_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_135 sourceBody598_150

def sourceBody598_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody598_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_152 sourceBody598_0

def sourceBody598_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_121 sourceBody598_153

def sourceBody598_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_151 sourceBody598_154

def sourceBody598_156 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody598_155 sourceBody598_0

def sourceBody598_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_156 sourceBody598_7

def sourceBody598_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_157 sourceBody598_0

def sourceBody598_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_134 sourceBody598_158

def sourceBody598_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_133 sourceBody598_159

def sourceBody598_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_130 sourceBody598_160

def sourceBody598_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_9 sourceBody598_161

def sourceBody598_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_129 sourceBody598_162

def sourceBody598_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_163

def sourceBody598_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_164

def sourceBody598_166 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody598_165 sourceBody598_0

def sourceBody598_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_166 sourceBody598_7

def sourceBody598_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_167 sourceBody598_0

def sourceBody598_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_124 sourceBody598_168

def sourceBody598_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_123 sourceBody598_169

def sourceBody598_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_120 sourceBody598_170

def sourceBody598_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_119 sourceBody598_171

def sourceBody598_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody598_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_173 sourceBody598_0

def sourceBody598_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_5 sourceBody598_174

def sourceBody598_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_172 sourceBody598_175

def sourceBody598_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_118 sourceBody598_176

def sourceBody598_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_177

def sourceBody598_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_117 sourceBody598_178

def sourceBody598_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_1 sourceBody598_179

def sourceBody598_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody598_0 sourceBody598_180

def source598 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (598, 1, sourceBody598_181)
end InitECandidate.Proofs.WordStages
