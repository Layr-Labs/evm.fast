import InitECandidate.Proofs.WordStages.Source590
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody606_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody606_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody606_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody606_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody606_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 6) sourceBody606_2 sourceBody606_3

def sourceBody606_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody606_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_4 sourceBody606_5

def sourceBody606_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody606_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody606_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody606_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody606_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_10 sourceBody606_8

def sourceBody606_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_11 sourceBody606_8

def sourceBody606_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_9 sourceBody606_12

def sourceBody606_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_13

def sourceBody606_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody606_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody606_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_15 sourceBody606_16

def sourceBody606_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_14 sourceBody606_17

def sourceBody606_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody606_18 sourceBody606_8

def sourceBody606_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_19 sourceBody606_5

def sourceBody606_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_20 sourceBody606_8

def sourceBody606_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_7 sourceBody606_21

def sourceBody606_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_6 sourceBody606_22

def sourceBody606_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_1 sourceBody606_23

def sourceBody606_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_0 sourceBody606_24

def sourceBody606_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody606_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 288#64]))

def sourceBody606_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody606_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody606_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody606_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 2)) (some 596) ([18, 14]) (some (18, sourceBody606_30, 606, 3))

def sourceBody606_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_31 sourceBody606_5

def sourceBody606_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_32 sourceBody606_8

def sourceBody606_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_29 sourceBody606_33

def sourceBody606_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_28 sourceBody606_34

def sourceBody606_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody606_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody606_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody606_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 24) sourceBody606_38 sourceBody606_29

def sourceBody606_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_39 sourceBody606_5

def sourceBody606_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody606_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody606_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 4)) (some 390) ([]) (some (14, sourceBody606_42, 606, 5))

def sourceBody606_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_43 sourceBody606_5

def sourceBody606_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_44 sourceBody606_8

def sourceBody606_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody606_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody606_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody606_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_48 sourceBody606_8

def sourceBody606_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_49 sourceBody606_8

def sourceBody606_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody606_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody606_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody606_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody606_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 22) sourceBody606_53 sourceBody606_54

def sourceBody606_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_55 sourceBody606_5

def sourceBody606_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody606_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody606_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody606_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 7)) (some 76) ([12]) (some (12, sourceBody606_59, 606, 8))

def sourceBody606_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_60 sourceBody606_5

def sourceBody606_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_61 sourceBody606_8

def sourceBody606_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_58 sourceBody606_62

def sourceBody606_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_63

def sourceBody606_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_64

def sourceBody606_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody606_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 9)) (some 73) ([12]) (some (12, sourceBody606_59, 606, 10))

def sourceBody606_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_67 sourceBody606_5

def sourceBody606_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_68 sourceBody606_8

def sourceBody606_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_66 sourceBody606_69

def sourceBody606_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_70

def sourceBody606_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_71

def sourceBody606_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_65 sourceBody606_72

def sourceBody606_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody606_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody606_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody606_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 22

def sourceBody606_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_77 sourceBody606_8

def sourceBody606_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_76 sourceBody606_78

def sourceBody606_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_79 sourceBody606_8

def sourceBody606_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_75 sourceBody606_80

def sourceBody606_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_81

def sourceBody606_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_74 sourceBody606_82

def sourceBody606_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_83

def sourceBody606_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_73 sourceBody606_84

def sourceBody606_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody606_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody606_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_87 sourceBody606_80

def sourceBody606_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_88

def sourceBody606_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_86 sourceBody606_89

def sourceBody606_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_90

def sourceBody606_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_85 sourceBody606_91

def sourceBody606_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody606_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody606_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_94 sourceBody606_8

def sourceBody606_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_95 sourceBody606_8

def sourceBody606_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_93 sourceBody606_96

def sourceBody606_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_97

def sourceBody606_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody606_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_99 sourceBody606_47

def sourceBody606_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_98 sourceBody606_100

def sourceBody606_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_92 sourceBody606_101

def sourceBody606_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody606_102 sourceBody606_8

def sourceBody606_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_103 sourceBody606_5

def sourceBody606_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_104 sourceBody606_8

def sourceBody606_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_57 sourceBody606_105

def sourceBody606_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_56 sourceBody606_106

def sourceBody606_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_52 sourceBody606_107

def sourceBody606_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_51 sourceBody606_108

def sourceBody606_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody606_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 11)) (some 391) ([12]) (some (12, sourceBody606_59, 606, 12))

def sourceBody606_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_111 sourceBody606_5

def sourceBody606_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_112 sourceBody606_8

def sourceBody606_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_110 sourceBody606_113

def sourceBody606_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_114

def sourceBody606_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_115

def sourceBody606_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_109 sourceBody606_116

def sourceBody606_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody606_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody606_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_119 sourceBody606_80

def sourceBody606_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_120

def sourceBody606_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_118 sourceBody606_121

def sourceBody606_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_122

def sourceBody606_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_117 sourceBody606_123

def sourceBody606_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 200#64])

def sourceBody606_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_54 sourceBody606_80

def sourceBody606_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_126

def sourceBody606_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_125 sourceBody606_127

def sourceBody606_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_128

def sourceBody606_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_124 sourceBody606_129

def sourceBody606_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 13)) (some 474) ([]) (some (12, sourceBody606_59, 606, 14))

def sourceBody606_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_131 sourceBody606_5

def sourceBody606_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_132 sourceBody606_8

def sourceBody606_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_133

def sourceBody606_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_134

def sourceBody606_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_130 sourceBody606_135

def sourceBody606_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 15)) (some 604) ([12]) (some (12, sourceBody606_59, 606, 16))

def sourceBody606_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_137 sourceBody606_5

def sourceBody606_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_138 sourceBody606_8

def sourceBody606_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_51 sourceBody606_139

def sourceBody606_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_140

def sourceBody606_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_141

def sourceBody606_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_136 sourceBody606_142

def sourceBody606_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_143 sourceBody606_84

def sourceBody606_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_144 sourceBody606_91

def sourceBody606_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody606_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody606_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_147 sourceBody606_8

def sourceBody606_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_146 sourceBody606_148

def sourceBody606_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_145 sourceBody606_149

def sourceBody606_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_50 sourceBody606_150

def sourceBody606_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_5 sourceBody606_151

def sourceBody606_153 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 8#64) sourceBody606_47 sourceBody606_152

def sourceBody606_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_153 sourceBody606_5

def sourceBody606_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 6)) (some 605) ([]) (some (16, sourceBody606_154, 606, 17))

def sourceBody606_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_155 sourceBody606_5

def sourceBody606_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_156 sourceBody606_8

def sourceBody606_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_157

def sourceBody606_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_158

def sourceBody606_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_159

def sourceBody606_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_160

def sourceBody606_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_46 sourceBody606_161

def sourceBody606_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_162

def sourceBody606_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_45 sourceBody606_163

def sourceBody606_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_164

def sourceBody606_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_165

def sourceBody606_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody606_166 sourceBody606_8

def sourceBody606_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_167 sourceBody606_5

def sourceBody606_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_168 sourceBody606_8

def sourceBody606_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_41 sourceBody606_169

def sourceBody606_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_40 sourceBody606_170

def sourceBody606_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_37 sourceBody606_171

def sourceBody606_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_36 sourceBody606_172

def sourceBody606_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 18)) (some 390) ([]) (some (14, sourceBody606_42, 606, 19))

def sourceBody606_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_174 sourceBody606_5

def sourceBody606_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_175 sourceBody606_8

def sourceBody606_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody606_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody606_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 24)

def sourceBody606_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 4

def sourceBody606_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_180 sourceBody606_8

def sourceBody606_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_179 sourceBody606_181

def sourceBody606_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_182 sourceBody606_8

def sourceBody606_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_178 sourceBody606_183

def sourceBody606_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_184

def sourceBody606_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_177 sourceBody606_185

def sourceBody606_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_186

def sourceBody606_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody606_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 20)) (some 599) ([]) (some (24, sourceBody606_188, 606, 21))

def sourceBody606_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_189 sourceBody606_5

def sourceBody606_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_190 sourceBody606_8

def sourceBody606_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_191

def sourceBody606_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_192

def sourceBody606_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_187 sourceBody606_193

def sourceBody606_195 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody606_8, 606, 22)) (some 602) ([]) (some (24, sourceBody606_188, 606, 23))

def sourceBody606_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_195 sourceBody606_5

def sourceBody606_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_196 sourceBody606_8

def sourceBody606_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_197

def sourceBody606_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_198

def sourceBody606_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_194 sourceBody606_199

def sourceBody606_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody606_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody606_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_202 sourceBody606_8

def sourceBody606_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_201 sourceBody606_203

def sourceBody606_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_200 sourceBody606_204

def sourceBody606_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_176 sourceBody606_205

def sourceBody606_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_206

def sourceBody606_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_207

def sourceBody606_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_173 sourceBody606_208

def sourceBody606_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_35 sourceBody606_209

def sourceBody606_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_210

def sourceBody606_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_211

def sourceBody606_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_27 sourceBody606_212

def sourceBody606_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_213

def sourceBody606_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_26 sourceBody606_214

def sourceBody606_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_8 sourceBody606_215

def sourceBody606_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody606_25 sourceBody606_216

def source606 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (606, 2, sourceBody606_217)
end InitECandidate.Proofs.WordStages
