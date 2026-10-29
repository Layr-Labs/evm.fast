import InitECandidate.Proofs.WordStages.Source521
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody537_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody537_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody537_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody537_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody537_0, 537, 2)) (some 470) ([18]) (some (18, sourceBody537_2, 537, 3))

def sourceBody537_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody537_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_3 sourceBody537_4

def sourceBody537_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_5 sourceBody537_0

def sourceBody537_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_1 sourceBody537_6

def sourceBody537_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_7

def sourceBody537_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_8

def sourceBody537_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody537_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody537_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody537_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody537_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody537_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 16) sourceBody537_13 sourceBody537_14

def sourceBody537_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_15 sourceBody537_4

def sourceBody537_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody537_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody537_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 18)

def sourceBody537_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_19 sourceBody537_0

def sourceBody537_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_20 sourceBody537_0

def sourceBody537_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_18 sourceBody537_21

def sourceBody537_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_22

def sourceBody537_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody537_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_24 sourceBody537_2

def sourceBody537_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_23 sourceBody537_25

def sourceBody537_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody537_26 sourceBody537_0

def sourceBody537_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_27 sourceBody537_4

def sourceBody537_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_28 sourceBody537_0

def sourceBody537_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_17 sourceBody537_29

def sourceBody537_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_16 sourceBody537_30

def sourceBody537_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_12 sourceBody537_31

def sourceBody537_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_11 sourceBody537_32

def sourceBody537_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
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
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64],
              Flapjack.WordLangExpHOL.var 2])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody537_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64],
                  Flapjack.WordLangExpHOL.var 2])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody537_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64],
                  Flapjack.WordLangExpHOL.var 2])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody537_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64],
                  Flapjack.WordLangExpHOL.var 2])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody537_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody537_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody537_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody537_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody537_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody537_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody537_0, 537, 4)) (some 476) ([4, 14, 10, 20]) (some (4, sourceBody537_42, 537, 5))

def sourceBody537_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_43 sourceBody537_4

def sourceBody537_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_44 sourceBody537_0

def sourceBody537_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_41 sourceBody537_45

def sourceBody537_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_40 sourceBody537_46

def sourceBody537_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_39 sourceBody537_47

def sourceBody537_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_38 sourceBody537_48

def sourceBody537_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_49

def sourceBody537_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_50

def sourceBody537_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody537_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody537_0, 537, 6)) (some 490) ([4]) (some (4, sourceBody537_42, 537, 7))

def sourceBody537_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_53 sourceBody537_4

def sourceBody537_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_54 sourceBody537_0

def sourceBody537_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_52 sourceBody537_55

def sourceBody537_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_56

def sourceBody537_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_57

def sourceBody537_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_51 sourceBody537_58

def sourceBody537_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody537_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody537_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_61 sourceBody537_0

def sourceBody537_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_60 sourceBody537_62

def sourceBody537_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_59 sourceBody537_63

def sourceBody537_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_37 sourceBody537_64

def sourceBody537_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_65

def sourceBody537_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_36 sourceBody537_66

def sourceBody537_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_67

def sourceBody537_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_35 sourceBody537_68

def sourceBody537_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_69

def sourceBody537_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_34 sourceBody537_70

def sourceBody537_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_71

def sourceBody537_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_33 sourceBody537_72

def sourceBody537_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_10 sourceBody537_73

def sourceBody537_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_0 sourceBody537_74

def sourceBody537_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody537_9 sourceBody537_75

def source537 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (537, 2, sourceBody537_76)
end InitECandidate.Proofs.WordStages
