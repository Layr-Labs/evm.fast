import InitECandidate.Proofs.WordStages.Source597
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody613_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody613_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody613_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody613_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody613_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 12) sourceBody613_2 sourceBody613_3

def sourceBody613_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody613_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_4 sourceBody613_5

def sourceBody613_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody613_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody613_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody613_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody613_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody613_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 12

def sourceBody613_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_12 sourceBody613_8

def sourceBody613_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_11 sourceBody613_13

def sourceBody613_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_14 sourceBody613_8

def sourceBody613_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_10 sourceBody613_15

def sourceBody613_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_16

def sourceBody613_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_9 sourceBody613_17

def sourceBody613_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_18

def sourceBody613_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody613_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_3 sourceBody613_15

def sourceBody613_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_21

def sourceBody613_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_20 sourceBody613_22

def sourceBody613_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_23

def sourceBody613_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_19 sourceBody613_24

def sourceBody613_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody613_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_26 sourceBody613_22

def sourceBody613_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_27

def sourceBody613_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_25 sourceBody613_28

def sourceBody613_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody613_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody613_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_31 sourceBody613_8

def sourceBody613_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_30 sourceBody613_32

def sourceBody613_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_29 sourceBody613_33

def sourceBody613_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody613_34 sourceBody613_8

def sourceBody613_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_35 sourceBody613_5

def sourceBody613_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_36 sourceBody613_8

def sourceBody613_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_7 sourceBody613_37

def sourceBody613_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_6 sourceBody613_38

def sourceBody613_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_1 sourceBody613_39

def sourceBody613_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_0 sourceBody613_40

def sourceBody613_42 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody613_43 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody613_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody613_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody613_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody613_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody613_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 16) sourceBody613_46 sourceBody613_47

def sourceBody613_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_48 sourceBody613_5

def sourceBody613_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody613_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody613_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody613_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody613_8, 613, 2)) (some 68) ([12]) (some (12, sourceBody613_52, 613, 3))

def sourceBody613_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_53 sourceBody613_5

def sourceBody613_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_54 sourceBody613_8

def sourceBody613_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_51 sourceBody613_55

def sourceBody613_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody613_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody613_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 16

def sourceBody613_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_59 sourceBody613_8

def sourceBody613_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_58 sourceBody613_60

def sourceBody613_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_61 sourceBody613_8

def sourceBody613_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_7 sourceBody613_62

def sourceBody613_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_63

def sourceBody613_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_57 sourceBody613_64

def sourceBody613_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_65

def sourceBody613_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_56 sourceBody613_66

def sourceBody613_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody613_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody613_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_69 sourceBody613_62

def sourceBody613_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_70

def sourceBody613_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_68 sourceBody613_71

def sourceBody613_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_72

def sourceBody613_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_67 sourceBody613_73

def sourceBody613_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody613_74 sourceBody613_8

def sourceBody613_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_75 sourceBody613_5

def sourceBody613_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_76 sourceBody613_8

def sourceBody613_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_50 sourceBody613_77

def sourceBody613_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_49 sourceBody613_78

def sourceBody613_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_45 sourceBody613_79

def sourceBody613_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_44 sourceBody613_80

def sourceBody613_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody613_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody613_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody613_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody613_8, 613, 4)) (some 77) ([10, 16, 6]) (some (10, sourceBody613_84, 613, 5))

def sourceBody613_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_85 sourceBody613_5

def sourceBody613_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_86 sourceBody613_8

def sourceBody613_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_83 sourceBody613_87

def sourceBody613_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_82 sourceBody613_88

def sourceBody613_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_7 sourceBody613_89

def sourceBody613_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_90

def sourceBody613_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_91

def sourceBody613_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_81 sourceBody613_92

def sourceBody613_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody613_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_94 sourceBody613_71

def sourceBody613_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_95

def sourceBody613_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_93 sourceBody613_96

def sourceBody613_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody613_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_98 sourceBody613_8

def sourceBody613_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_1 sourceBody613_99

def sourceBody613_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_97 sourceBody613_100

def sourceBody613_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_43 sourceBody613_101

def sourceBody613_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_102

def sourceBody613_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_42 sourceBody613_103

def sourceBody613_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_8 sourceBody613_104

def sourceBody613_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody613_41 sourceBody613_105

def source613 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (613, 3, sourceBody613_106)
end InitECandidate.Proofs.WordStages
