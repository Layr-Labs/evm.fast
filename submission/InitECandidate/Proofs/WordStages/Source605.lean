import InitECandidate.Proofs.WordStages.Source589
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody605_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody605_1 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody605_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody605_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody605_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody605_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody605_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody605_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 6) sourceBody605_5 sourceBody605_6

def sourceBody605_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody605_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_7 sourceBody605_8

def sourceBody605_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody605_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody605_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody605_0, 605, 2)) (some 593) ([]) (some (8, sourceBody605_11, 605, 3))

def sourceBody605_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_12 sourceBody605_8

def sourceBody605_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_13 sourceBody605_0

def sourceBody605_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_14

def sourceBody605_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_15

def sourceBody605_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody605_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody605_0, 605, 4)) (some 473) ([8]) (some (8, sourceBody605_11, 605, 5))

def sourceBody605_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_18 sourceBody605_8

def sourceBody605_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_19 sourceBody605_0

def sourceBody605_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_17 sourceBody605_20

def sourceBody605_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 200#64])

def sourceBody605_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody605_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody605_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 12

def sourceBody605_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_25 sourceBody605_0

def sourceBody605_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_24 sourceBody605_26

def sourceBody605_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_27 sourceBody605_0

def sourceBody605_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_23 sourceBody605_28

def sourceBody605_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_29

def sourceBody605_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_22 sourceBody605_30

def sourceBody605_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_31

def sourceBody605_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody605_34 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody605_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_34 sourceBody605_28

def sourceBody605_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_35

def sourceBody605_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_33 sourceBody605_36

def sourceBody605_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_37

def sourceBody605_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_32 sourceBody605_38

def sourceBody605_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody605_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_4 sourceBody605_28

def sourceBody605_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_41

def sourceBody605_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_40 sourceBody605_42

def sourceBody605_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_43

def sourceBody605_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_39 sourceBody605_44

def sourceBody605_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_21 sourceBody605_45

def sourceBody605_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_46

def sourceBody605_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_47

def sourceBody605_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_16 sourceBody605_48

def sourceBody605_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody605_49 sourceBody605_0

def sourceBody605_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_50 sourceBody605_8

def sourceBody605_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_51 sourceBody605_0

def sourceBody605_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_10 sourceBody605_52

def sourceBody605_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_9 sourceBody605_53

def sourceBody605_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_4 sourceBody605_54

def sourceBody605_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_3 sourceBody605_55

def sourceBody605_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody605_0, 605, 6)) (some 594) ([]) (some (8, sourceBody605_11, 605, 7))

def sourceBody605_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_57 sourceBody605_8

def sourceBody605_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_58 sourceBody605_0

def sourceBody605_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_59

def sourceBody605_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_60

def sourceBody605_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_56 sourceBody605_61

def sourceBody605_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody605_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody605_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_64 sourceBody605_0

def sourceBody605_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_63 sourceBody605_65

def sourceBody605_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_62 sourceBody605_66

def sourceBody605_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_2 sourceBody605_67

def sourceBody605_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_68

def sourceBody605_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_1 sourceBody605_69

def sourceBody605_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody605_0 sourceBody605_70

def source605 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (605, 1, sourceBody605_71)
end InitECandidate.Proofs.WordStages
