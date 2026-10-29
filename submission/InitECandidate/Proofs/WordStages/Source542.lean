import InitECandidate.Proofs.WordStages.Source526
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody542_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody542_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody542_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody542_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody542_0, 542, 2)) (some 470) ([20]) (some (20, sourceBody542_2, 542, 3))

def sourceBody542_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody542_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_3 sourceBody542_4

def sourceBody542_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_5 sourceBody542_0

def sourceBody542_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_1 sourceBody542_6

def sourceBody542_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_7

def sourceBody542_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_8

def sourceBody542_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody542_0, 542, 4)) (some 540) ([]) (some (20, sourceBody542_2, 542, 5))

def sourceBody542_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_10 sourceBody542_4

def sourceBody542_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_11 sourceBody542_0

def sourceBody542_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody542_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody542_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody542_0, 542, 6)) (some 541) ([4]) (some (4, sourceBody542_14, 542, 7))

def sourceBody542_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_15 sourceBody542_4

def sourceBody542_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_16 sourceBody542_0

def sourceBody542_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_13 sourceBody542_17

def sourceBody542_19 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody542_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody542_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody542_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody542_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 12) sourceBody542_21 sourceBody542_22

def sourceBody542_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_23 sourceBody542_4

def sourceBody542_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody542_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody542_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody542_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_27 sourceBody542_0

def sourceBody542_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_28 sourceBody542_0

def sourceBody542_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_26 sourceBody542_29

def sourceBody542_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_30

def sourceBody542_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody542_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_32 sourceBody542_14

def sourceBody542_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_31 sourceBody542_33

def sourceBody542_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody542_34 sourceBody542_0

def sourceBody542_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_35 sourceBody542_4

def sourceBody542_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_36 sourceBody542_0

def sourceBody542_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_25 sourceBody542_37

def sourceBody542_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_24 sourceBody542_38

def sourceBody542_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_20 sourceBody542_39

def sourceBody542_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_19 sourceBody542_40

def sourceBody542_42 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody542_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
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
            [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 20])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody542_44 : WordLangProgHOL (BitVec 64) :=
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
                [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 20])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody542_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
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
                [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 20])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody542_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
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
                [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 20])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody542_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody542_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody542_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody542_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody542_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody542_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody542_0, 542, 8)) (some 476) ([10, 22, 6, 18]) (some (10, sourceBody542_51, 542, 9))

def sourceBody542_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_52 sourceBody542_4

def sourceBody542_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_53 sourceBody542_0

def sourceBody542_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_50 sourceBody542_54

def sourceBody542_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_49 sourceBody542_55

def sourceBody542_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_48 sourceBody542_56

def sourceBody542_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_47 sourceBody542_57

def sourceBody542_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_58

def sourceBody542_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_59

def sourceBody542_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody542_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody542_0, 542, 10)) (some 490) ([10]) (some (10, sourceBody542_51, 542, 11))

def sourceBody542_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_62 sourceBody542_4

def sourceBody542_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_63 sourceBody542_0

def sourceBody542_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_61 sourceBody542_64

def sourceBody542_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_65

def sourceBody542_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_66

def sourceBody542_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_60 sourceBody542_67

def sourceBody542_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody542_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody542_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_70 sourceBody542_0

def sourceBody542_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_69 sourceBody542_71

def sourceBody542_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_68 sourceBody542_72

def sourceBody542_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_46 sourceBody542_73

def sourceBody542_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_74

def sourceBody542_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_45 sourceBody542_75

def sourceBody542_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_76

def sourceBody542_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_44 sourceBody542_77

def sourceBody542_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_78

def sourceBody542_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_43 sourceBody542_79

def sourceBody542_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_80

def sourceBody542_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_42 sourceBody542_81

def sourceBody542_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_82

def sourceBody542_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_41 sourceBody542_83

def sourceBody542_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_18 sourceBody542_84

def sourceBody542_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_85

def sourceBody542_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_86

def sourceBody542_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_12 sourceBody542_87

def sourceBody542_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_88

def sourceBody542_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_0 sourceBody542_89

def sourceBody542_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody542_9 sourceBody542_90

def source542 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (542, 1, sourceBody542_91)
end InitECandidate.Proofs.WordStages
