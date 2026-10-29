import InitECandidate.Proofs.WordStages.Source460
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody476_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody476_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody476_2 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 232#64]))

def sourceBody476_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody476_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody476_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody476_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody476_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 18) sourceBody476_5 sourceBody476_6

def sourceBody476_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody476_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_7 sourceBody476_8

def sourceBody476_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody476_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody476_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody476_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody476_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 24)

def sourceBody476_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_14 sourceBody476_0

def sourceBody476_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_15 sourceBody476_0

def sourceBody476_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_13 sourceBody476_16

def sourceBody476_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_17

def sourceBody476_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody476_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody476_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_19 sourceBody476_20

def sourceBody476_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_18 sourceBody476_21

def sourceBody476_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody476_22 sourceBody476_0

def sourceBody476_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_23 sourceBody476_8

def sourceBody476_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_24 sourceBody476_0

def sourceBody476_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_10 sourceBody476_25

def sourceBody476_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_9 sourceBody476_26

def sourceBody476_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_12 sourceBody476_27

def sourceBody476_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_11 sourceBody476_28

def sourceBody476_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody476_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody476_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody476_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody476_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 14) sourceBody476_32 sourceBody476_33

def sourceBody476_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_34 sourceBody476_8

def sourceBody476_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody476_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody476_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_37 sourceBody476_0

def sourceBody476_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_38 sourceBody476_0

def sourceBody476_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody476_39 sourceBody476_0

def sourceBody476_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_40 sourceBody476_8

def sourceBody476_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_41 sourceBody476_0

def sourceBody476_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_36 sourceBody476_42

def sourceBody476_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_35 sourceBody476_43

def sourceBody476_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_31 sourceBody476_44

def sourceBody476_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_12 sourceBody476_45

def sourceBody476_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody476_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody476_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody476_0, 476, 2)) (some 74) ([18]) (some (18, sourceBody476_48, 476, 3))

def sourceBody476_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_49 sourceBody476_8

def sourceBody476_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_50 sourceBody476_0

def sourceBody476_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_47 sourceBody476_51

def sourceBody476_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
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
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody476_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody476_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody476_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody476_0, 476, 4)) (some 77) ([14, 22, 12]) (some (14, sourceBody476_55, 476, 5))

def sourceBody476_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_56 sourceBody476_8

def sourceBody476_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_57 sourceBody476_0

def sourceBody476_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_54 sourceBody476_58

def sourceBody476_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_53 sourceBody476_59

def sourceBody476_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_10 sourceBody476_60

def sourceBody476_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_61

def sourceBody476_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_62

def sourceBody476_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody476_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody476_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 22

def sourceBody476_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_66 sourceBody476_0

def sourceBody476_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_65 sourceBody476_67

def sourceBody476_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_68 sourceBody476_0

def sourceBody476_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_10 sourceBody476_69

def sourceBody476_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_70

def sourceBody476_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_64 sourceBody476_71

def sourceBody476_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_72

def sourceBody476_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_63 sourceBody476_73

def sourceBody476_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 232#64])

def sourceBody476_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_31 sourceBody476_69

def sourceBody476_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_76

def sourceBody476_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_75 sourceBody476_77

def sourceBody476_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_78

def sourceBody476_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_74 sourceBody476_79

def sourceBody476_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_52 sourceBody476_80

def sourceBody476_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_81

def sourceBody476_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_82

def sourceBody476_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_46 sourceBody476_83

def sourceBody476_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_30 sourceBody476_84

def sourceBody476_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_85

def sourceBody476_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_29 sourceBody476_86

def sourceBody476_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody476_87 sourceBody476_0

def sourceBody476_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_88 sourceBody476_8

def sourceBody476_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_89 sourceBody476_0

def sourceBody476_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_10 sourceBody476_90

def sourceBody476_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_9 sourceBody476_91

def sourceBody476_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_4 sourceBody476_92

def sourceBody476_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_3 sourceBody476_93

def sourceBody476_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 18) sourceBody476_5 sourceBody476_6

def sourceBody476_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_95 sourceBody476_8

def sourceBody476_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_96 sourceBody476_26

def sourceBody476_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_12 sourceBody476_97

def sourceBody476_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_3 sourceBody476_98

def sourceBody476_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_94 sourceBody476_99

def sourceBody476_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
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
            Flapjack.WordLangExpHOL.const 8#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody476_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody476_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody476_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody476_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody476_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody476_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 12

def sourceBody476_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_107 sourceBody476_0

def sourceBody476_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_106 sourceBody476_108

def sourceBody476_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody476_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 8#64])
  12

def sourceBody476_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_111 sourceBody476_0

def sourceBody476_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_110 sourceBody476_112

def sourceBody476_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody476_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody476_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_115 sourceBody476_0

def sourceBody476_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_114 sourceBody476_116

def sourceBody476_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody476_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody476_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_119 sourceBody476_0

def sourceBody476_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_118 sourceBody476_120

def sourceBody476_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_121 sourceBody476_0

def sourceBody476_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_117 sourceBody476_122

def sourceBody476_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_113 sourceBody476_123

def sourceBody476_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_109 sourceBody476_124

def sourceBody476_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_105 sourceBody476_125

def sourceBody476_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_126

def sourceBody476_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_104 sourceBody476_127

def sourceBody476_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_128

def sourceBody476_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_103 sourceBody476_129

def sourceBody476_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_130

def sourceBody476_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_102 sourceBody476_131

def sourceBody476_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_132

def sourceBody476_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_101 sourceBody476_133

def sourceBody476_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_134

def sourceBody476_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_100 sourceBody476_135

def sourceBody476_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody476_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody476_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody476_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 18

def sourceBody476_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_140 sourceBody476_0

def sourceBody476_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_139 sourceBody476_141

def sourceBody476_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_142 sourceBody476_0

def sourceBody476_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_138 sourceBody476_143

def sourceBody476_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_144

def sourceBody476_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_137 sourceBody476_145

def sourceBody476_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_146

def sourceBody476_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_136 sourceBody476_147

def sourceBody476_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody476_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody476_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_150 sourceBody476_0

def sourceBody476_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_149 sourceBody476_151

def sourceBody476_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_148 sourceBody476_152

def sourceBody476_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_2 sourceBody476_153

def sourceBody476_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_154

def sourceBody476_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_1 sourceBody476_155

def sourceBody476_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody476_0 sourceBody476_156

def source476 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (476, 5, sourceBody476_157)
end InitECandidate.Proofs.WordStages
