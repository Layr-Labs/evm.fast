import InitECandidate.Proofs.WordStages.Source408
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody424_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody424_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody424_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody424_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody424_0, 424, 2)) (some 421) ([10]) (some (10, sourceBody424_2, 424, 3))

def sourceBody424_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody424_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_3 sourceBody424_4

def sourceBody424_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_5 sourceBody424_0

def sourceBody424_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_1 sourceBody424_6

def sourceBody424_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_7

def sourceBody424_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_8

def sourceBody424_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody424_0, 424, 4)) (some 407) ([10]) (some (10, sourceBody424_2, 424, 5))

def sourceBody424_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_10 sourceBody424_4

def sourceBody424_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_11 sourceBody424_0

def sourceBody424_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_1 sourceBody424_12

def sourceBody424_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody424_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody424_0, 424, 6)) (some 395) ([10]) (some (10, sourceBody424_2, 424, 7))

def sourceBody424_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_15 sourceBody424_4

def sourceBody424_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_16 sourceBody424_0

def sourceBody424_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_14 sourceBody424_17

def sourceBody424_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody424_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody424_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody424_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def sourceBody424_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_22 sourceBody424_0

def sourceBody424_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_21 sourceBody424_23

def sourceBody424_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_24 sourceBody424_0

def sourceBody424_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_20 sourceBody424_25

def sourceBody424_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_26

def sourceBody424_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_19 sourceBody424_27

def sourceBody424_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_28

def sourceBody424_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_18 sourceBody424_29

def sourceBody424_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody424_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody424_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_32 sourceBody424_25

def sourceBody424_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_33

def sourceBody424_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_31 sourceBody424_34

def sourceBody424_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_35

def sourceBody424_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_30 sourceBody424_36

def sourceBody424_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody424_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody424_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody424_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody424_0, 424, 8)) (some 423) ([4, 8]) (some (4, sourceBody424_40, 424, 9))

def sourceBody424_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_41 sourceBody424_4

def sourceBody424_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_42 sourceBody424_0

def sourceBody424_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_39 sourceBody424_43

def sourceBody424_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_38 sourceBody424_44

def sourceBody424_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_45

def sourceBody424_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_46

def sourceBody424_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_37 sourceBody424_47

def sourceBody424_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody424_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody424_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_50 sourceBody424_0

def sourceBody424_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_49 sourceBody424_51

def sourceBody424_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_48 sourceBody424_52

def sourceBody424_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_13 sourceBody424_53

def sourceBody424_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_54

def sourceBody424_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_0 sourceBody424_55

def sourceBody424_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody424_9 sourceBody424_56

def source424 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (424, 2, sourceBody424_57)
end InitECandidate.Proofs.WordStages
