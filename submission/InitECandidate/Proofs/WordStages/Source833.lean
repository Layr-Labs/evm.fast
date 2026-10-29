import InitECandidate.Proofs.WordStages.Source817
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody833_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody833_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody833_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody833_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody833_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody833_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody833_0, 833, 2)) (some 465) ([12]) (some (12, sourceBody833_4, 833, 3))

def sourceBody833_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody833_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_5 sourceBody833_6

def sourceBody833_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_7 sourceBody833_0

def sourceBody833_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_3 sourceBody833_8

def sourceBody833_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody833_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 120#64)

def sourceBody833_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 2 2 8 16))

def sourceBody833_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 600#64, Flapjack.WordLangExpHOL.var 2])

def sourceBody833_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody833_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody833_0, 833, 4)) (some 470) ([10]) (some (8, sourceBody833_14, 833, 5))

def sourceBody833_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_15 sourceBody833_6

def sourceBody833_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_16 sourceBody833_0

def sourceBody833_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_13 sourceBody833_17

def sourceBody833_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_12 sourceBody833_18

def sourceBody833_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_11 sourceBody833_19

def sourceBody833_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_10 sourceBody833_20

def sourceBody833_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_21

def sourceBody833_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_22

def sourceBody833_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody833_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody833_0, 833, 6)) (some 68) ([8]) (some (8, sourceBody833_14, 833, 7))

def sourceBody833_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_25 sourceBody833_6

def sourceBody833_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_26 sourceBody833_0

def sourceBody833_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_24 sourceBody833_27

def sourceBody833_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody833_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody833_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody833_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody833_0, 833, 8)) (some 78) ([16, 2]) (some (16, sourceBody833_31, 833, 9))

def sourceBody833_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_32 sourceBody833_6

def sourceBody833_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_33 sourceBody833_0

def sourceBody833_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_30 sourceBody833_34

def sourceBody833_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_29 sourceBody833_35

def sourceBody833_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_36

def sourceBody833_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_37

def sourceBody833_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody833_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 14)

def sourceBody833_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody833_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody833_0, 833, 10)) (some 631) ([16, 2, 10]) (some (16, sourceBody833_31, 833, 11))

def sourceBody833_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_42 sourceBody833_6

def sourceBody833_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_43 sourceBody833_0

def sourceBody833_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_41 sourceBody833_44

def sourceBody833_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_40 sourceBody833_45

def sourceBody833_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_39 sourceBody833_46

def sourceBody833_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_47

def sourceBody833_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_48

def sourceBody833_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_38 sourceBody833_49

def sourceBody833_51 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody833_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody833_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody833_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_53 sourceBody833_0

def sourceBody833_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_52 sourceBody833_54

def sourceBody833_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_55 sourceBody833_0

def sourceBody833_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_29 sourceBody833_56

def sourceBody833_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_57

def sourceBody833_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_51 sourceBody833_58

def sourceBody833_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_59

def sourceBody833_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_50 sourceBody833_60

def sourceBody833_62 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody833_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody833_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_63 sourceBody833_56

def sourceBody833_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_64

def sourceBody833_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_62 sourceBody833_65

def sourceBody833_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_66

def sourceBody833_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_61 sourceBody833_67

def sourceBody833_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody833_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody833_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_70 sourceBody833_0

def sourceBody833_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_69 sourceBody833_71

def sourceBody833_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_68 sourceBody833_72

def sourceBody833_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_28 sourceBody833_73

def sourceBody833_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_74

def sourceBody833_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_75

def sourceBody833_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_23 sourceBody833_76

def sourceBody833_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_9 sourceBody833_77

def sourceBody833_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_78

def sourceBody833_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_79

def sourceBody833_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_2 sourceBody833_80

def sourceBody833_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_81

def sourceBody833_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_1 sourceBody833_82

def sourceBody833_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody833_0 sourceBody833_83

def source833 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (833, 1, sourceBody833_84)
end InitECandidate.Proofs.WordStages
