import InitECandidate.Proofs.WordStages.Source685
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody701_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody701_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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

def sourceBody701_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 150#64)

def sourceBody701_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody701_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 2)) (some 470) ([4]) (some (4, sourceBody701_3, 701, 3))

def sourceBody701_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody701_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_4 sourceBody701_5

def sourceBody701_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_6 sourceBody701_0

def sourceBody701_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_2 sourceBody701_7

def sourceBody701_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_8

def sourceBody701_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_9

def sourceBody701_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody701_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 4)) (some 68) ([4]) (some (4, sourceBody701_3, 701, 5))

def sourceBody701_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_12 sourceBody701_5

def sourceBody701_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_13 sourceBody701_0

def sourceBody701_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_11 sourceBody701_14

def sourceBody701_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody701_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 6)) (some 69) ([]) (some (14, sourceBody701_16, 701, 7))

def sourceBody701_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_17 sourceBody701_5

def sourceBody701_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_18 sourceBody701_0

def sourceBody701_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody701_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody701_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 8)) (some 68) ([10]) (some (10, sourceBody701_21, 701, 9))

def sourceBody701_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_22 sourceBody701_5

def sourceBody701_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_23 sourceBody701_0

def sourceBody701_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_20 sourceBody701_24

def sourceBody701_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody701_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody701_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody701_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody701_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody701_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody701_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 10)) (some 484) ([20, 2, 12, 8, 18]) (some (20, sourceBody701_31, 701, 11))

def sourceBody701_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_32 sourceBody701_5

def sourceBody701_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_33 sourceBody701_0

def sourceBody701_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_30 sourceBody701_34

def sourceBody701_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_29 sourceBody701_35

def sourceBody701_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_28 sourceBody701_36

def sourceBody701_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_27 sourceBody701_37

def sourceBody701_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_26 sourceBody701_38

def sourceBody701_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_39

def sourceBody701_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_40

def sourceBody701_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody701_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody701_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 12)) (some 698) ([20, 2]) (some (20, sourceBody701_31, 701, 13))

def sourceBody701_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_44 sourceBody701_5

def sourceBody701_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_45 sourceBody701_0

def sourceBody701_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_43 sourceBody701_46

def sourceBody701_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_42 sourceBody701_47

def sourceBody701_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody701_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody701_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody701_0, 701, 14)) (some 70) ([2]) (some (2, sourceBody701_50, 701, 15))

def sourceBody701_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_51 sourceBody701_5

def sourceBody701_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_52 sourceBody701_0

def sourceBody701_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_49 sourceBody701_53

def sourceBody701_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_54

def sourceBody701_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_55

def sourceBody701_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody701_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody701_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody701_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 12) sourceBody701_58 sourceBody701_59

def sourceBody701_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_60 sourceBody701_5

def sourceBody701_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody701_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody701_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody701_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_64 sourceBody701_0

def sourceBody701_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_65 sourceBody701_0

def sourceBody701_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_63 sourceBody701_66

def sourceBody701_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_67

def sourceBody701_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody701_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_69 sourceBody701_31

def sourceBody701_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_68 sourceBody701_70

def sourceBody701_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody701_71 sourceBody701_0

def sourceBody701_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_72 sourceBody701_5

def sourceBody701_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_73 sourceBody701_0

def sourceBody701_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_62 sourceBody701_74

def sourceBody701_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_61 sourceBody701_75

def sourceBody701_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_28 sourceBody701_76

def sourceBody701_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_57 sourceBody701_77

def sourceBody701_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_56 sourceBody701_78

def sourceBody701_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody701_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody701_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 12

def sourceBody701_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_82 sourceBody701_0

def sourceBody701_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_81 sourceBody701_83

def sourceBody701_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_84 sourceBody701_0

def sourceBody701_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_43 sourceBody701_85

def sourceBody701_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_86

def sourceBody701_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_80 sourceBody701_87

def sourceBody701_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_88

def sourceBody701_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_79 sourceBody701_89

def sourceBody701_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody701_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody701_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_92 sourceBody701_85

def sourceBody701_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_93

def sourceBody701_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_91 sourceBody701_94

def sourceBody701_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_95

def sourceBody701_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_90 sourceBody701_96

def sourceBody701_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody701_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody701_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_99 sourceBody701_0

def sourceBody701_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_98 sourceBody701_100

def sourceBody701_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_97 sourceBody701_101

def sourceBody701_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_48 sourceBody701_102

def sourceBody701_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_103

def sourceBody701_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_104

def sourceBody701_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_41 sourceBody701_105

def sourceBody701_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_25 sourceBody701_106

def sourceBody701_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_107

def sourceBody701_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_108

def sourceBody701_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_19 sourceBody701_109

def sourceBody701_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_110

def sourceBody701_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_111

def sourceBody701_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_15 sourceBody701_112

def sourceBody701_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_113

def sourceBody701_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_114

def sourceBody701_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_10 sourceBody701_115

def sourceBody701_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_1 sourceBody701_116

def sourceBody701_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody701_0 sourceBody701_117

def source701 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (701, 1, sourceBody701_118)
end InitECandidate.Proofs.WordStages
