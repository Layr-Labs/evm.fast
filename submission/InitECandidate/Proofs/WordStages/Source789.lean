import InitECandidate.Proofs.WordStages.Source773
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody789_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody789_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody789_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody789_0, 789, 2)) (some 69) ([]) (some (14, sourceBody789_1, 789, 3))

def sourceBody789_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody789_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_2 sourceBody789_3

def sourceBody789_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_4 sourceBody789_0

def sourceBody789_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody789_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody789_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody789_0, 789, 4)) (some 68) ([6]) (some (6, sourceBody789_7, 789, 5))

def sourceBody789_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_8 sourceBody789_3

def sourceBody789_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_9 sourceBody789_0

def sourceBody789_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_6 sourceBody789_10

def sourceBody789_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody789_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody789_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1344#64])

def sourceBody789_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody789_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody789_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody789_0, 789, 6)) (some 784) ([12, 10, 16, 4]) (some (12, sourceBody789_16, 789, 7))

def sourceBody789_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_17 sourceBody789_3

def sourceBody789_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_18 sourceBody789_0

def sourceBody789_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_15 sourceBody789_19

def sourceBody789_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_14 sourceBody789_20

def sourceBody789_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_13 sourceBody789_21

def sourceBody789_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_12 sourceBody789_22

def sourceBody789_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_23

def sourceBody789_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_24

def sourceBody789_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody789_0, 789, 8)) (some 779) ([12]) (some (12, sourceBody789_16, 789, 9))

def sourceBody789_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_26 sourceBody789_3

def sourceBody789_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_27 sourceBody789_0

def sourceBody789_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_12 sourceBody789_28

def sourceBody789_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody789_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody789_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody789_0, 789, 10)) (some 70) ([10]) (some (10, sourceBody789_31, 789, 11))

def sourceBody789_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_32 sourceBody789_3

def sourceBody789_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_33 sourceBody789_0

def sourceBody789_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_30 sourceBody789_34

def sourceBody789_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_35

def sourceBody789_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_36

def sourceBody789_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody789_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody789_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_39 sourceBody789_0

def sourceBody789_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_38 sourceBody789_40

def sourceBody789_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_37 sourceBody789_41

def sourceBody789_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_29 sourceBody789_42

def sourceBody789_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_43

def sourceBody789_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_44

def sourceBody789_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_25 sourceBody789_45

def sourceBody789_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_11 sourceBody789_46

def sourceBody789_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_47

def sourceBody789_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_48

def sourceBody789_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_5 sourceBody789_49

def sourceBody789_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_50

def sourceBody789_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody789_0 sourceBody789_51

def source789 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (789, 2, sourceBody789_52)
end InitECandidate.Proofs.WordStages
