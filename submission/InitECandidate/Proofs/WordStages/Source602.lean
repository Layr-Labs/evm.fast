import InitECandidate.Proofs.WordStages.Source586
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody602_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody602_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody602_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody602_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody602_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody602_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody602_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody602_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody602_5 sourceBody602_6

def sourceBody602_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_7 sourceBody602_2

def sourceBody602_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody602_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody602_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 288#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody602_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody602_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody602_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody602_13 sourceBody602_4

def sourceBody602_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_14 sourceBody602_2

def sourceBody602_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody602_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody602_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_17 sourceBody602_0

def sourceBody602_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_18 sourceBody602_0

def sourceBody602_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
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
        Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody602_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 8) sourceBody602_13 sourceBody602_4

def sourceBody602_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_21 sourceBody602_2

def sourceBody602_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
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
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody602_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
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
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody602_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody602_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 14) sourceBody602_25 sourceBody602_12

def sourceBody602_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_26 sourceBody602_2

def sourceBody602_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody602_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
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
            Flapjack.WordLangExpHOL.const 48#64]),
      Flapjack.WordLangExpHOL.var 4])

def sourceBody602_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody602_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 14)

def sourceBody602_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody602_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody602_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_33 sourceBody602_0

def sourceBody602_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_34 sourceBody602_0

def sourceBody602_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody602_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody602_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody602_0, 602, 3)) (some 597) ([2]) (some (2, sourceBody602_37, 602, 4))

def sourceBody602_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_38 sourceBody602_2

def sourceBody602_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_39 sourceBody602_0

def sourceBody602_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_36 sourceBody602_40

def sourceBody602_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_41

def sourceBody602_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_42

def sourceBody602_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_35 sourceBody602_43

def sourceBody602_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_2 sourceBody602_44

def sourceBody602_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 8#64) sourceBody602_32 sourceBody602_45

def sourceBody602_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_46 sourceBody602_2

def sourceBody602_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody602_0, 602, 2)) (some 595) ([2]) (some (14, sourceBody602_47, 602, 5))

def sourceBody602_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_48 sourceBody602_2

def sourceBody602_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_49 sourceBody602_0

def sourceBody602_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_31 sourceBody602_50

def sourceBody602_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_30 sourceBody602_51

def sourceBody602_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_29 sourceBody602_52

def sourceBody602_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_53

def sourceBody602_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_54

def sourceBody602_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_55

def sourceBody602_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_56

def sourceBody602_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody602_19 sourceBody602_57

def sourceBody602_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_58 sourceBody602_2

def sourceBody602_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_59 sourceBody602_0

def sourceBody602_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_28 sourceBody602_60

def sourceBody602_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_27 sourceBody602_61

def sourceBody602_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_24 sourceBody602_62

def sourceBody602_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_9 sourceBody602_63

def sourceBody602_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_23 sourceBody602_64

def sourceBody602_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_65

def sourceBody602_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody602_19 sourceBody602_66

def sourceBody602_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_67 sourceBody602_2

def sourceBody602_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_68 sourceBody602_0

def sourceBody602_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_16 sourceBody602_69

def sourceBody602_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_22 sourceBody602_70

def sourceBody602_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_12 sourceBody602_71

def sourceBody602_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_20 sourceBody602_72

def sourceBody602_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody602_19 sourceBody602_73

def sourceBody602_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_74 sourceBody602_2

def sourceBody602_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_75 sourceBody602_0

def sourceBody602_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_16 sourceBody602_76

def sourceBody602_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_15 sourceBody602_77

def sourceBody602_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_12 sourceBody602_78

def sourceBody602_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_11 sourceBody602_79

def sourceBody602_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody602_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody602_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody602_0, 602, 6)) (some 600) ([]) (some (10, sourceBody602_82, 602, 7))

def sourceBody602_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_83 sourceBody602_2

def sourceBody602_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_84 sourceBody602_0

def sourceBody602_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_85

def sourceBody602_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_86

def sourceBody602_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 288#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody602_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody602_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 288#64]),
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody602_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody602_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 8

def sourceBody602_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_92 sourceBody602_0

def sourceBody602_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_91 sourceBody602_93

def sourceBody602_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_94 sourceBody602_0

def sourceBody602_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_90 sourceBody602_95

def sourceBody602_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_96

def sourceBody602_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_89 sourceBody602_97

def sourceBody602_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_98

def sourceBody602_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody602_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 288#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody602_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_101 sourceBody602_95

def sourceBody602_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_102

def sourceBody602_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_100 sourceBody602_103

def sourceBody602_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_104

def sourceBody602_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_99 sourceBody602_105

def sourceBody602_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody602_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_107 sourceBody602_0

def sourceBody602_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_108 sourceBody602_0

def sourceBody602_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_106 sourceBody602_109

def sourceBody602_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody602_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody602_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_112 sourceBody602_0

def sourceBody602_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_113 sourceBody602_0

def sourceBody602_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody602_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody602_0, 602, 9)) (some 597) ([14]) (some (14, sourceBody602_32, 602, 10))

def sourceBody602_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_116 sourceBody602_2

def sourceBody602_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_117 sourceBody602_0

def sourceBody602_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_115 sourceBody602_118

def sourceBody602_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_119

def sourceBody602_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_120

def sourceBody602_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_114 sourceBody602_121

def sourceBody602_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_2 sourceBody602_122

def sourceBody602_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 8#64) sourceBody602_111 sourceBody602_123

def sourceBody602_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_124 sourceBody602_2

def sourceBody602_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody602_0, 602, 8)) (some 601) ([]) (some (8, sourceBody602_125, 602, 11))

def sourceBody602_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_126 sourceBody602_2

def sourceBody602_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_127 sourceBody602_0

def sourceBody602_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_128

def sourceBody602_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_129

def sourceBody602_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_130

def sourceBody602_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_131

def sourceBody602_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody602_110 sourceBody602_132

def sourceBody602_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_133 sourceBody602_2

def sourceBody602_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_134 sourceBody602_0

def sourceBody602_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_16 sourceBody602_135

def sourceBody602_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_22 sourceBody602_136

def sourceBody602_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_12 sourceBody602_137

def sourceBody602_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_88 sourceBody602_138

def sourceBody602_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_87 sourceBody602_139

def sourceBody602_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody602_140 sourceBody602_0

def sourceBody602_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_141 sourceBody602_2

def sourceBody602_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_142 sourceBody602_0

def sourceBody602_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_16 sourceBody602_143

def sourceBody602_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_15 sourceBody602_144

def sourceBody602_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_12 sourceBody602_145

def sourceBody602_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_81 sourceBody602_146

def sourceBody602_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_80 sourceBody602_147

def sourceBody602_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_10 sourceBody602_148

def sourceBody602_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_149

def sourceBody602_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody602_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_150 sourceBody602_151

def sourceBody602_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody602_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody602_152 sourceBody602_153

def sourceBody602_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_154 sourceBody602_2

def sourceBody602_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_155 sourceBody602_0

def sourceBody602_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_9 sourceBody602_156

def sourceBody602_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_8 sourceBody602_157

def sourceBody602_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_4 sourceBody602_158

def sourceBody602_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_3 sourceBody602_159

def sourceBody602_161 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln) sourceBody602_160 (Flapjack.Spt.ls PUnit.unit)

def sourceBody602_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_161 sourceBody602_2

def sourceBody602_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_2 sourceBody602_162

def sourceBody602_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody602_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_164 sourceBody602_0

def sourceBody602_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_10 sourceBody602_165

def sourceBody602_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_163 sourceBody602_166

def sourceBody602_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_1 sourceBody602_167

def sourceBody602_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody602_0 sourceBody602_168

def source602 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (602, 1, sourceBody602_169)
end InitECandidate.Proofs.WordStages
