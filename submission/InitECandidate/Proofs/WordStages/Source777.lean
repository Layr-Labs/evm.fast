import InitECandidate.Proofs.WordStages.Source761
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody777_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody777_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody777_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody777_0, 777, 2)) (some 69) ([]) (some (14, sourceBody777_1, 777, 3))

def sourceBody777_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody777_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_2 sourceBody777_3

def sourceBody777_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_4 sourceBody777_0

def sourceBody777_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody777_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody777_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody777_0, 777, 4)) (some 68) ([6]) (some (6, sourceBody777_7, 777, 5))

def sourceBody777_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_8 sourceBody777_3

def sourceBody777_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_9 sourceBody777_0

def sourceBody777_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_6 sourceBody777_10

def sourceBody777_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody777_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody777_14 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody777_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody777_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody777_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody777_0, 777, 6)) (some 772) ([12, 10, 16, 4]) (some (12, sourceBody777_16, 777, 7))

def sourceBody777_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_17 sourceBody777_3

def sourceBody777_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_18 sourceBody777_0

def sourceBody777_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_15 sourceBody777_19

def sourceBody777_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_14 sourceBody777_20

def sourceBody777_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_13 sourceBody777_21

def sourceBody777_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_12 sourceBody777_22

def sourceBody777_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_23

def sourceBody777_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_24

def sourceBody777_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody777_0, 777, 8)) (some 767) ([12]) (some (12, sourceBody777_16, 777, 9))

def sourceBody777_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_26 sourceBody777_3

def sourceBody777_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_27 sourceBody777_0

def sourceBody777_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_12 sourceBody777_28

def sourceBody777_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody777_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody777_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody777_0, 777, 10)) (some 70) ([10]) (some (10, sourceBody777_31, 777, 11))

def sourceBody777_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_32 sourceBody777_3

def sourceBody777_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_33 sourceBody777_0

def sourceBody777_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_30 sourceBody777_34

def sourceBody777_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_35

def sourceBody777_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_36

def sourceBody777_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody777_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody777_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_39 sourceBody777_0

def sourceBody777_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_38 sourceBody777_40

def sourceBody777_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_37 sourceBody777_41

def sourceBody777_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_29 sourceBody777_42

def sourceBody777_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_43

def sourceBody777_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_44

def sourceBody777_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_25 sourceBody777_45

def sourceBody777_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_11 sourceBody777_46

def sourceBody777_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_47

def sourceBody777_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_48

def sourceBody777_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_5 sourceBody777_49

def sourceBody777_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_50

def sourceBody777_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody777_0 sourceBody777_51

def source777 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (777, 2, sourceBody777_52)
end InitECandidate.Proofs.WordStages
