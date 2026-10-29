import InitECandidate.Proofs.WordStages.Source686
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody702_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody702_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody702_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 6000#64)

def sourceBody702_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody702_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 2)) (some 470) ([4]) (some (4, sourceBody702_3, 702, 3))

def sourceBody702_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody702_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_4 sourceBody702_5

def sourceBody702_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_6 sourceBody702_0

def sourceBody702_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_2 sourceBody702_7

def sourceBody702_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_8

def sourceBody702_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_9

def sourceBody702_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody702_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 4)) (some 68) ([4]) (some (4, sourceBody702_3, 702, 5))

def sourceBody702_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_12 sourceBody702_5

def sourceBody702_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_13 sourceBody702_0

def sourceBody702_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_11 sourceBody702_14

def sourceBody702_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody702_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 6)) (some 69) ([]) (some (14, sourceBody702_16, 702, 7))

def sourceBody702_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_17 sourceBody702_5

def sourceBody702_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_18 sourceBody702_0

def sourceBody702_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody702_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody702_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 8)) (some 68) ([10]) (some (10, sourceBody702_21, 702, 9))

def sourceBody702_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_22 sourceBody702_5

def sourceBody702_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_23 sourceBody702_0

def sourceBody702_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_20 sourceBody702_24

def sourceBody702_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody702_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody702_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody702_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody702_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody702_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody702_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 10)) (some 484) ([20, 2, 12, 8, 18]) (some (20, sourceBody702_31, 702, 11))

def sourceBody702_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_32 sourceBody702_5

def sourceBody702_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_33 sourceBody702_0

def sourceBody702_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_30 sourceBody702_34

def sourceBody702_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_29 sourceBody702_35

def sourceBody702_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_28 sourceBody702_36

def sourceBody702_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_27 sourceBody702_37

def sourceBody702_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_26 sourceBody702_38

def sourceBody702_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_39

def sourceBody702_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_40

def sourceBody702_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody702_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody702_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 12)) (some 699) ([20, 2]) (some (20, sourceBody702_31, 702, 13))

def sourceBody702_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_44 sourceBody702_5

def sourceBody702_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_45 sourceBody702_0

def sourceBody702_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_43 sourceBody702_46

def sourceBody702_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_42 sourceBody702_47

def sourceBody702_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody702_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody702_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody702_0, 702, 14)) (some 70) ([2]) (some (2, sourceBody702_50, 702, 15))

def sourceBody702_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_51 sourceBody702_5

def sourceBody702_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_52 sourceBody702_0

def sourceBody702_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_49 sourceBody702_53

def sourceBody702_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_54

def sourceBody702_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_55

def sourceBody702_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody702_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody702_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody702_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 12) sourceBody702_58 sourceBody702_59

def sourceBody702_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_60 sourceBody702_5

def sourceBody702_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody702_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody702_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody702_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_64 sourceBody702_0

def sourceBody702_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_65 sourceBody702_0

def sourceBody702_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_63 sourceBody702_66

def sourceBody702_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_67

def sourceBody702_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody702_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_69 sourceBody702_31

def sourceBody702_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_68 sourceBody702_70

def sourceBody702_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody702_71 sourceBody702_0

def sourceBody702_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_72 sourceBody702_5

def sourceBody702_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_73 sourceBody702_0

def sourceBody702_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_62 sourceBody702_74

def sourceBody702_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_61 sourceBody702_75

def sourceBody702_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_28 sourceBody702_76

def sourceBody702_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_57 sourceBody702_77

def sourceBody702_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_56 sourceBody702_78

def sourceBody702_80 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody702_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody702_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 12

def sourceBody702_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_82 sourceBody702_0

def sourceBody702_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_81 sourceBody702_83

def sourceBody702_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_84 sourceBody702_0

def sourceBody702_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_43 sourceBody702_85

def sourceBody702_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_86

def sourceBody702_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_80 sourceBody702_87

def sourceBody702_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_88

def sourceBody702_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_79 sourceBody702_89

def sourceBody702_91 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody702_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody702_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_92 sourceBody702_85

def sourceBody702_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_93

def sourceBody702_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_91 sourceBody702_94

def sourceBody702_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_95

def sourceBody702_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_90 sourceBody702_96

def sourceBody702_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody702_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody702_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_99 sourceBody702_0

def sourceBody702_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_98 sourceBody702_100

def sourceBody702_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_97 sourceBody702_101

def sourceBody702_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_48 sourceBody702_102

def sourceBody702_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_103

def sourceBody702_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_104

def sourceBody702_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_41 sourceBody702_105

def sourceBody702_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_25 sourceBody702_106

def sourceBody702_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_107

def sourceBody702_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_108

def sourceBody702_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_19 sourceBody702_109

def sourceBody702_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_110

def sourceBody702_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_111

def sourceBody702_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_15 sourceBody702_112

def sourceBody702_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_113

def sourceBody702_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_114

def sourceBody702_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_10 sourceBody702_115

def sourceBody702_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_1 sourceBody702_116

def sourceBody702_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody702_0 sourceBody702_117

def source702 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (702, 1, sourceBody702_118)
end InitECandidate.Proofs.WordStages
