import InitECandidate.Proofs.WordStages.Source372
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody388_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody388_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody388_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody388_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody388_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 20]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody388_0, 388, 2)) (some 186) ([16, 24]) (some (16, sourceBody388_3, 388, 3))

def sourceBody388_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody388_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_4 sourceBody388_5

def sourceBody388_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_6 sourceBody388_0

def sourceBody388_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_2 sourceBody388_7

def sourceBody388_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_1 sourceBody388_8

def sourceBody388_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody388_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody388_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody388_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody388_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 24 (Flapjack.WordRegImm.reg 8) sourceBody388_12 sourceBody388_13

def sourceBody388_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_14 sourceBody388_5

def sourceBody388_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody388_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody388_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody388_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody388_0, 388, 4)) (some 66) ([24]) (some (24, sourceBody388_18, 388, 5))

def sourceBody388_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_19 sourceBody388_5

def sourceBody388_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_20 sourceBody388_0

def sourceBody388_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_17 sourceBody388_21

def sourceBody388_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_22

def sourceBody388_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_23

def sourceBody388_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody388_24 sourceBody388_0

def sourceBody388_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_25 sourceBody388_5

def sourceBody388_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_26 sourceBody388_0

def sourceBody388_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_16 sourceBody388_27

def sourceBody388_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_15 sourceBody388_28

def sourceBody388_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_11 sourceBody388_29

def sourceBody388_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_10 sourceBody388_30

def sourceBody388_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody388_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody388_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody388_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody388_0, 388, 6)) (some 68) ([8]) (some (8, sourceBody388_34, 388, 7))

def sourceBody388_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_35 sourceBody388_5

def sourceBody388_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_36 sourceBody388_0

def sourceBody388_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_33 sourceBody388_37

def sourceBody388_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody388_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody388_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody388_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody388_0, 388, 8)) (some 77) ([18, 14, 22]) (some (18, sourceBody388_41, 388, 9))

def sourceBody388_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_42 sourceBody388_5

def sourceBody388_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_43 sourceBody388_0

def sourceBody388_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_40 sourceBody388_44

def sourceBody388_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_39 sourceBody388_45

def sourceBody388_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_16 sourceBody388_46

def sourceBody388_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_47

def sourceBody388_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_48

def sourceBody388_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
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

def sourceBody388_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody388_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody388_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody388_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 22

def sourceBody388_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_54 sourceBody388_0

def sourceBody388_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_53 sourceBody388_55

def sourceBody388_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_56 sourceBody388_0

def sourceBody388_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_52 sourceBody388_57

def sourceBody388_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_58

def sourceBody388_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_51 sourceBody388_59

def sourceBody388_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_60

def sourceBody388_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody388_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody388_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_63 sourceBody388_57

def sourceBody388_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_64

def sourceBody388_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_62 sourceBody388_65

def sourceBody388_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_66

def sourceBody388_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_61 sourceBody388_67

def sourceBody388_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody388_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody388_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_70 sourceBody388_57

def sourceBody388_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_71

def sourceBody388_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_69 sourceBody388_72

def sourceBody388_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_73

def sourceBody388_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_68 sourceBody388_74

def sourceBody388_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody388_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody388_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_77 sourceBody388_57

def sourceBody388_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_78

def sourceBody388_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_76 sourceBody388_79

def sourceBody388_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_80

def sourceBody388_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_75 sourceBody388_81

def sourceBody388_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody388_84 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody388_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_84 sourceBody388_57

def sourceBody388_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_85

def sourceBody388_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_83 sourceBody388_86

def sourceBody388_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_87

def sourceBody388_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_82 sourceBody388_88

def sourceBody388_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody388_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody388_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody388_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody388_0, 388, 10)) (some 192) ([14, 22, 12]) (some (14, sourceBody388_92, 388, 11))

def sourceBody388_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_93 sourceBody388_5

def sourceBody388_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_94 sourceBody388_0

def sourceBody388_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_91 sourceBody388_95

def sourceBody388_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_90 sourceBody388_96

def sourceBody388_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_52 sourceBody388_97

def sourceBody388_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_98

def sourceBody388_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_99

def sourceBody388_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_89 sourceBody388_100

def sourceBody388_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody388_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody388_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_103 sourceBody388_0

def sourceBody388_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_102 sourceBody388_104

def sourceBody388_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_101 sourceBody388_105

def sourceBody388_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_50 sourceBody388_106

def sourceBody388_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_107

def sourceBody388_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_49 sourceBody388_108

def sourceBody388_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_38 sourceBody388_109

def sourceBody388_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_110

def sourceBody388_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_111

def sourceBody388_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_32 sourceBody388_112

def sourceBody388_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_113

def sourceBody388_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_31 sourceBody388_114

def sourceBody388_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_9 sourceBody388_115

def sourceBody388_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_116

def sourceBody388_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_117

def sourceBody388_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_118

def sourceBody388_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody388_0 sourceBody388_119

def source388 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (388, 4, sourceBody388_120)
end InitECandidate.Proofs.WordStages
