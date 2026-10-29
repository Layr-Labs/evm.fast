import InitECandidate.Proofs.WordStages.Source422
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody438_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody438_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody438_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody438_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody438_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody438_0, 438, 2)) (some 182) ([8, 2]) (some (8, sourceBody438_3, 438, 3))

def sourceBody438_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody438_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_4 sourceBody438_5

def sourceBody438_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_6 sourceBody438_0

def sourceBody438_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_2 sourceBody438_7

def sourceBody438_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_1 sourceBody438_8

def sourceBody438_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody438_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody438_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody438_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody438_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_13 sourceBody438_0

def sourceBody438_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_12 sourceBody438_14

def sourceBody438_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_15 sourceBody438_0

def sourceBody438_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_11 sourceBody438_16

def sourceBody438_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_17

def sourceBody438_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_10 sourceBody438_18

def sourceBody438_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_19

def sourceBody438_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_9 sourceBody438_20

def sourceBody438_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_21

def sourceBody438_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_22

def sourceBody438_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 28#64)

def sourceBody438_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody438_0, 438, 4)) (some 182) ([8, 2]) (some (8, sourceBody438_3, 438, 5))

def sourceBody438_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_25 sourceBody438_5

def sourceBody438_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_26 sourceBody438_0

def sourceBody438_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_2 sourceBody438_27

def sourceBody438_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_24 sourceBody438_28

def sourceBody438_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 232#64])

def sourceBody438_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_30 sourceBody438_18

def sourceBody438_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_31

def sourceBody438_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_29 sourceBody438_32

def sourceBody438_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_33

def sourceBody438_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_34

def sourceBody438_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_23 sourceBody438_35

def sourceBody438_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 60#64)

def sourceBody438_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody438_0, 438, 6)) (some 182) ([8, 2]) (some (8, sourceBody438_3, 438, 7))

def sourceBody438_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_38 sourceBody438_5

def sourceBody438_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_39 sourceBody438_0

def sourceBody438_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_2 sourceBody438_40

def sourceBody438_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_37 sourceBody438_41

def sourceBody438_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 240#64])

def sourceBody438_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_43 sourceBody438_18

def sourceBody438_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_44

def sourceBody438_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_42 sourceBody438_45

def sourceBody438_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_46

def sourceBody438_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_47

def sourceBody438_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_36 sourceBody438_48

def sourceBody438_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody438_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody438_0, 438, 8)) (some 68) ([8]) (some (8, sourceBody438_3, 438, 9))

def sourceBody438_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_51 sourceBody438_5

def sourceBody438_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_52 sourceBody438_0

def sourceBody438_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_50 sourceBody438_53

def sourceBody438_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 248#64])

def sourceBody438_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_55 sourceBody438_18

def sourceBody438_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_56

def sourceBody438_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_54 sourceBody438_57

def sourceBody438_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_58

def sourceBody438_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_59

def sourceBody438_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_49 sourceBody438_60

def sourceBody438_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 224#64])

def sourceBody438_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody438_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody438_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody438_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_65 sourceBody438_0

def sourceBody438_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_64 sourceBody438_66

def sourceBody438_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_67 sourceBody438_0

def sourceBody438_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_63 sourceBody438_68

def sourceBody438_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_69

def sourceBody438_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_62 sourceBody438_70

def sourceBody438_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_0 sourceBody438_71

def sourceBody438_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_61 sourceBody438_72

def sourceBody438_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody438_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody438_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_75 sourceBody438_0

def sourceBody438_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_74 sourceBody438_76

def sourceBody438_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody438_73 sourceBody438_77

def source438 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (438, 1, sourceBody438_78)
end InitECandidate.Proofs.WordStages
