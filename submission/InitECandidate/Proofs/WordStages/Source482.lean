import InitECandidate.Proofs.WordStages.Source466
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody482_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody482_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody482_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody482_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody482_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 6) sourceBody482_2 sourceBody482_3

def sourceBody482_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody482_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_4 sourceBody482_5

def sourceBody482_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody482_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody482_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody482_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody482_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_9 sourceBody482_10

def sourceBody482_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_8 sourceBody482_11

def sourceBody482_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody482_12 sourceBody482_10

def sourceBody482_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_13 sourceBody482_5

def sourceBody482_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_14 sourceBody482_10

def sourceBody482_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_7 sourceBody482_15

def sourceBody482_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_6 sourceBody482_16

def sourceBody482_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_1 sourceBody482_17

def sourceBody482_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_0 sourceBody482_18

def sourceBody482_20 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody482_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
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
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody482_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 2])

def sourceBody482_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody482_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody482_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody482_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody482_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) sourceBody482_25 sourceBody482_26

def sourceBody482_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_27 sourceBody482_5

def sourceBody482_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody482_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody482_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody482_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody482_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody482_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody482_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 4) sourceBody482_33 sourceBody482_34

def sourceBody482_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_35 sourceBody482_5

def sourceBody482_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody482_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1024#64])

def sourceBody482_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_38 sourceBody482_10

def sourceBody482_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_39 sourceBody482_10

def sourceBody482_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody482_40 sourceBody482_10

def sourceBody482_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_41 sourceBody482_5

def sourceBody482_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_42 sourceBody482_10

def sourceBody482_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_37 sourceBody482_43

def sourceBody482_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_36 sourceBody482_44

def sourceBody482_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_32 sourceBody482_45

def sourceBody482_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_31 sourceBody482_46

def sourceBody482_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody482_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody482_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody482_10, 482, 2)) (some 71) ([18]) (some (18, sourceBody482_49, 482, 3))

def sourceBody482_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_50 sourceBody482_5

def sourceBody482_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_51 sourceBody482_10

def sourceBody482_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_48 sourceBody482_52

def sourceBody482_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_53

def sourceBody482_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_54

def sourceBody482_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_47 sourceBody482_55

def sourceBody482_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
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
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 16])

def sourceBody482_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody482_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody482_10, 482, 4)) (some 78) ([18, 4]) (some (18, sourceBody482_49, 482, 5))

def sourceBody482_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_59 sourceBody482_5

def sourceBody482_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_60 sourceBody482_10

def sourceBody482_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_58 sourceBody482_61

def sourceBody482_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_57 sourceBody482_62

def sourceBody482_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_63

def sourceBody482_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_64

def sourceBody482_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_56 sourceBody482_65

def sourceBody482_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody482_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody482_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 4

def sourceBody482_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_69 sourceBody482_10

def sourceBody482_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_68 sourceBody482_70

def sourceBody482_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_71 sourceBody482_10

def sourceBody482_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_31 sourceBody482_72

def sourceBody482_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_73

def sourceBody482_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_67 sourceBody482_74

def sourceBody482_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_75

def sourceBody482_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_66 sourceBody482_76

def sourceBody482_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_30 sourceBody482_77

def sourceBody482_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_78

def sourceBody482_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody482_79 sourceBody482_10

def sourceBody482_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_80 sourceBody482_5

def sourceBody482_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_81 sourceBody482_10

def sourceBody482_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_29 sourceBody482_82

def sourceBody482_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_28 sourceBody482_83

def sourceBody482_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_24 sourceBody482_84

def sourceBody482_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_23 sourceBody482_85

def sourceBody482_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
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
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 8])

def sourceBody482_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody482_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody482_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody482_10, 482, 6)) (some 78) ([10, 18]) (some (10, sourceBody482_89, 482, 7))

def sourceBody482_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_90 sourceBody482_5

def sourceBody482_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_91 sourceBody482_10

def sourceBody482_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_88 sourceBody482_92

def sourceBody482_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_87 sourceBody482_93

def sourceBody482_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_94

def sourceBody482_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_95

def sourceBody482_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_86 sourceBody482_96

def sourceBody482_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody482_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody482_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody482_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 18

def sourceBody482_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_101 sourceBody482_10

def sourceBody482_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_100 sourceBody482_102

def sourceBody482_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_103 sourceBody482_10

def sourceBody482_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_99 sourceBody482_104

def sourceBody482_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_105

def sourceBody482_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_98 sourceBody482_106

def sourceBody482_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_107

def sourceBody482_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_97 sourceBody482_108

def sourceBody482_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody482_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody482_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_111 sourceBody482_10

def sourceBody482_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_110 sourceBody482_112

def sourceBody482_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_109 sourceBody482_113

def sourceBody482_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_22 sourceBody482_114

def sourceBody482_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_115

def sourceBody482_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_21 sourceBody482_116

def sourceBody482_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_117

def sourceBody482_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_20 sourceBody482_118

def sourceBody482_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_10 sourceBody482_119

def sourceBody482_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody482_19 sourceBody482_120

def source482 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (482, 2, sourceBody482_121)
end InitECandidate.Proofs.WordStages
