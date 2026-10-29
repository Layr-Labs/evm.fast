import InitECandidate.Proofs.WordStages.Source815
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody831_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody831_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody831_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody831_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody831_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody831_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody831_0, 831, 2)) (some 465) ([12]) (some (12, sourceBody831_4, 831, 3))

def sourceBody831_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody831_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_5 sourceBody831_6

def sourceBody831_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_7 sourceBody831_0

def sourceBody831_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_3 sourceBody831_8

def sourceBody831_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody831_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody831_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 2 2 8 16))

def sourceBody831_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 60#64, Flapjack.WordLangExpHOL.var 2])

def sourceBody831_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody831_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody831_0, 831, 4)) (some 470) ([10]) (some (8, sourceBody831_14, 831, 5))

def sourceBody831_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_15 sourceBody831_6

def sourceBody831_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_16 sourceBody831_0

def sourceBody831_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_13 sourceBody831_17

def sourceBody831_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_12 sourceBody831_18

def sourceBody831_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_11 sourceBody831_19

def sourceBody831_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_10 sourceBody831_20

def sourceBody831_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_21

def sourceBody831_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_22

def sourceBody831_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody831_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody831_0, 831, 6)) (some 68) ([8]) (some (8, sourceBody831_14, 831, 7))

def sourceBody831_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_25 sourceBody831_6

def sourceBody831_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_26 sourceBody831_0

def sourceBody831_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_24 sourceBody831_27

def sourceBody831_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody831_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 14)

def sourceBody831_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody831_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody831_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody831_0, 831, 8)) (some 153) ([16, 2, 10]) (some (16, sourceBody831_32, 831, 9))

def sourceBody831_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_33 sourceBody831_6

def sourceBody831_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_34 sourceBody831_0

def sourceBody831_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_31 sourceBody831_35

def sourceBody831_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_30 sourceBody831_36

def sourceBody831_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_29 sourceBody831_37

def sourceBody831_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_38

def sourceBody831_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_39

def sourceBody831_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody831_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody831_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody831_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody831_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_44 sourceBody831_0

def sourceBody831_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_43 sourceBody831_45

def sourceBody831_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_46 sourceBody831_0

def sourceBody831_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_42 sourceBody831_47

def sourceBody831_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_48

def sourceBody831_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_41 sourceBody831_49

def sourceBody831_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_50

def sourceBody831_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_40 sourceBody831_51

def sourceBody831_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody831_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody831_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_54 sourceBody831_47

def sourceBody831_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_55

def sourceBody831_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_53 sourceBody831_56

def sourceBody831_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_57

def sourceBody831_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_52 sourceBody831_58

def sourceBody831_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody831_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody831_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_61 sourceBody831_0

def sourceBody831_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_60 sourceBody831_62

def sourceBody831_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_59 sourceBody831_63

def sourceBody831_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_28 sourceBody831_64

def sourceBody831_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_65

def sourceBody831_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_66

def sourceBody831_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_23 sourceBody831_67

def sourceBody831_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_9 sourceBody831_68

def sourceBody831_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_69

def sourceBody831_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_70

def sourceBody831_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_2 sourceBody831_71

def sourceBody831_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_72

def sourceBody831_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_1 sourceBody831_73

def sourceBody831_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody831_0 sourceBody831_74

def source831 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (831, 1, sourceBody831_75)
end InitECandidate.Proofs.WordStages
