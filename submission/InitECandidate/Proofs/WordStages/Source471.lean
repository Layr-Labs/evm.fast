import InitECandidate.Proofs.WordStages.Source455
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody471_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody471_1 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody471_2 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody471_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody471_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody471_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody471_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody471_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 10) sourceBody471_5 sourceBody471_6

def sourceBody471_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody471_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_7 sourceBody471_8

def sourceBody471_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody471_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody471_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 2])

def sourceBody471_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody471_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 10

def sourceBody471_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_14 sourceBody471_0

def sourceBody471_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_13 sourceBody471_15

def sourceBody471_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_16 sourceBody471_0

def sourceBody471_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_12 sourceBody471_17

def sourceBody471_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_18

def sourceBody471_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_11 sourceBody471_19

def sourceBody471_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_20

def sourceBody471_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody471_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody471_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_23 sourceBody471_0

def sourceBody471_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_22 sourceBody471_24

def sourceBody471_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_21 sourceBody471_25

def sourceBody471_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody471_26 sourceBody471_0

def sourceBody471_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_27 sourceBody471_8

def sourceBody471_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_28 sourceBody471_0

def sourceBody471_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_10 sourceBody471_29

def sourceBody471_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_9 sourceBody471_30

def sourceBody471_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_4 sourceBody471_31

def sourceBody471_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_3 sourceBody471_32

def sourceBody471_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody471_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody471_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody471_0, 471, 2)) (some 463) ([12, 10]) (some (12, sourceBody471_35, 471, 3))

def sourceBody471_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_36 sourceBody471_8

def sourceBody471_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_37 sourceBody471_0

def sourceBody471_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_34 sourceBody471_38

def sourceBody471_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_3 sourceBody471_39

def sourceBody471_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody471_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody471_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody471_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody471_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 16) sourceBody471_43 sourceBody471_44

def sourceBody471_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_45 sourceBody471_8

def sourceBody471_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody471_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 8])

def sourceBody471_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody471_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody471_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 16)

def sourceBody471_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 4

def sourceBody471_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_52 sourceBody471_0

def sourceBody471_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_51 sourceBody471_53

def sourceBody471_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_54 sourceBody471_0

def sourceBody471_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_50 sourceBody471_55

def sourceBody471_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_56

def sourceBody471_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_49 sourceBody471_57

def sourceBody471_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_58

def sourceBody471_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody471_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 12])

def sourceBody471_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_61 sourceBody471_55

def sourceBody471_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_62

def sourceBody471_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_60 sourceBody471_63

def sourceBody471_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_64

def sourceBody471_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_59 sourceBody471_65

def sourceBody471_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody471_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
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
            Flapjack.WordLangExpHOL.const 192#64]),
      Flapjack.WordLangExpHOL.var 12])

def sourceBody471_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_68 sourceBody471_55

def sourceBody471_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_69

def sourceBody471_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_67 sourceBody471_70

def sourceBody471_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_71

def sourceBody471_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_66 sourceBody471_72

def sourceBody471_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody471_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_74 sourceBody471_0

def sourceBody471_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_44 sourceBody471_75

def sourceBody471_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_73 sourceBody471_76

def sourceBody471_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_48 sourceBody471_77

def sourceBody471_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_78

def sourceBody471_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody471_79 sourceBody471_0

def sourceBody471_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_80 sourceBody471_8

def sourceBody471_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_81 sourceBody471_0

def sourceBody471_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_47 sourceBody471_82

def sourceBody471_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_46 sourceBody471_83

def sourceBody471_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_42 sourceBody471_84

def sourceBody471_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_41 sourceBody471_85

def sourceBody471_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody471_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 12)

def sourceBody471_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_88 sourceBody471_0

def sourceBody471_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_89 sourceBody471_0

def sourceBody471_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_87 sourceBody471_90

def sourceBody471_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_91

def sourceBody471_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody471_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_93 sourceBody471_35

def sourceBody471_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_92 sourceBody471_94

def sourceBody471_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_86 sourceBody471_95

def sourceBody471_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody471_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_97 sourceBody471_0

def sourceBody471_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_6 sourceBody471_98

def sourceBody471_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_96 sourceBody471_99

def sourceBody471_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_40 sourceBody471_100

def sourceBody471_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_101

def sourceBody471_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_102

def sourceBody471_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_33 sourceBody471_103

def sourceBody471_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_2 sourceBody471_104

def sourceBody471_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_105

def sourceBody471_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_1 sourceBody471_106

def sourceBody471_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody471_0 sourceBody471_107

def source471 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (471, 2, sourceBody471_108)
end InitECandidate.Proofs.WordStages
