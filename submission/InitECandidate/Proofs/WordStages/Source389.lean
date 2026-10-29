import InitECandidate.Proofs.WordStages.Source373
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody389_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody389_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody389_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody389_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody389_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody389_0, 389, 2)) (some 186) ([16, 12]) (some (16, sourceBody389_3, 389, 3))

def sourceBody389_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody389_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_4 sourceBody389_5

def sourceBody389_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_6 sourceBody389_0

def sourceBody389_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_2 sourceBody389_7

def sourceBody389_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_1 sourceBody389_8

def sourceBody389_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody389_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody389_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody389_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody389_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 20) sourceBody389_12 sourceBody389_13

def sourceBody389_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_14 sourceBody389_5

def sourceBody389_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody389_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody389_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody389_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_18 sourceBody389_0

def sourceBody389_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_17 sourceBody389_19

def sourceBody389_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody389_20 sourceBody389_0

def sourceBody389_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_21 sourceBody389_5

def sourceBody389_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_22 sourceBody389_0

def sourceBody389_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_16 sourceBody389_23

def sourceBody389_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_15 sourceBody389_24

def sourceBody389_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_11 sourceBody389_25

def sourceBody389_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_10 sourceBody389_26

def sourceBody389_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody389_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody389_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 20) sourceBody389_12 sourceBody389_13

def sourceBody389_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_30 sourceBody389_5

def sourceBody389_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody389_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody389_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody389_0, 389, 4)) (some 66) ([12]) (some (12, sourceBody389_33, 389, 5))

def sourceBody389_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_34 sourceBody389_5

def sourceBody389_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_35 sourceBody389_0

def sourceBody389_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_32 sourceBody389_36

def sourceBody389_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_37

def sourceBody389_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_38

def sourceBody389_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody389_39 sourceBody389_0

def sourceBody389_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_40 sourceBody389_5

def sourceBody389_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_41 sourceBody389_0

def sourceBody389_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_16 sourceBody389_42

def sourceBody389_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_31 sourceBody389_43

def sourceBody389_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_29 sourceBody389_44

def sourceBody389_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_28 sourceBody389_45

def sourceBody389_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_27 sourceBody389_46

def sourceBody389_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody389_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody389_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody389_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody389_0, 389, 6)) (some 68) ([20]) (some (20, sourceBody389_50, 389, 7))

def sourceBody389_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_51 sourceBody389_5

def sourceBody389_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_52 sourceBody389_0

def sourceBody389_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_49 sourceBody389_53

def sourceBody389_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody389_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody389_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody389_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody389_0, 389, 8)) (some 77) ([6, 14, 10]) (some (6, sourceBody389_57, 389, 9))

def sourceBody389_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_58 sourceBody389_5

def sourceBody389_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_59 sourceBody389_0

def sourceBody389_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_56 sourceBody389_60

def sourceBody389_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_55 sourceBody389_61

def sourceBody389_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_16 sourceBody389_62

def sourceBody389_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_63

def sourceBody389_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_64

def sourceBody389_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 200#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 16#64]))
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody389_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody389_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody389_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody389_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 10

def sourceBody389_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_70 sourceBody389_0

def sourceBody389_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_69 sourceBody389_71

def sourceBody389_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_72 sourceBody389_0

def sourceBody389_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_68 sourceBody389_73

def sourceBody389_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_74

def sourceBody389_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_67 sourceBody389_75

def sourceBody389_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_76

def sourceBody389_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody389_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody389_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_79 sourceBody389_73

def sourceBody389_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_80

def sourceBody389_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_78 sourceBody389_81

def sourceBody389_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_82

def sourceBody389_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_77 sourceBody389_83

def sourceBody389_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody389_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody389_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_86 sourceBody389_73

def sourceBody389_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_87

def sourceBody389_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_85 sourceBody389_88

def sourceBody389_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_89

def sourceBody389_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_84 sourceBody389_90

def sourceBody389_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody389_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody389_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_93 sourceBody389_73

def sourceBody389_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_94

def sourceBody389_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_92 sourceBody389_95

def sourceBody389_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_96

def sourceBody389_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_91 sourceBody389_97

def sourceBody389_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody389_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 16#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody389_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_100 sourceBody389_73

def sourceBody389_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_101

def sourceBody389_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_99 sourceBody389_102

def sourceBody389_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_103

def sourceBody389_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_98 sourceBody389_104

def sourceBody389_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody389_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody389_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody389_0, 389, 10)) (some 193) ([14, 10]) (some (14, sourceBody389_107, 389, 11))

def sourceBody389_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_108 sourceBody389_5

def sourceBody389_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_109 sourceBody389_0

def sourceBody389_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_106 sourceBody389_110

def sourceBody389_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_68 sourceBody389_111

def sourceBody389_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_112

def sourceBody389_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_113

def sourceBody389_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_105 sourceBody389_114

def sourceBody389_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody389_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody389_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_117 sourceBody389_0

def sourceBody389_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_116 sourceBody389_118

def sourceBody389_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_115 sourceBody389_119

def sourceBody389_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_66 sourceBody389_120

def sourceBody389_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_121

def sourceBody389_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_65 sourceBody389_122

def sourceBody389_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_54 sourceBody389_123

def sourceBody389_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_124

def sourceBody389_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_125

def sourceBody389_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_48 sourceBody389_126

def sourceBody389_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_127

def sourceBody389_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_47 sourceBody389_128

def sourceBody389_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_9 sourceBody389_129

def sourceBody389_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_130

def sourceBody389_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_131

def sourceBody389_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_132

def sourceBody389_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody389_0 sourceBody389_133

def source389 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (389, 3, sourceBody389_134)
end InitECandidate.Proofs.WordStages
