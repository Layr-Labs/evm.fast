import InitECandidate.Proofs.WordStages.Source381
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody397_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody397_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody397_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody397_0, 397, 2)) (some 69) ([]) (some (16, sourceBody397_1, 397, 3))

def sourceBody397_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody397_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_2 sourceBody397_3

def sourceBody397_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_4 sourceBody397_0

def sourceBody397_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody397_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody397_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody397_0, 397, 4)) (some 68) ([6]) (some (6, sourceBody397_7, 397, 5))

def sourceBody397_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_8 sourceBody397_3

def sourceBody397_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_9 sourceBody397_0

def sourceBody397_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_6 sourceBody397_10

def sourceBody397_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody397_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody397_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody397_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody397_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody397_0, 397, 6)) (some 158) ([14, 10, 18]) (some (14, sourceBody397_15, 397, 7))

def sourceBody397_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_16 sourceBody397_3

def sourceBody397_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_17 sourceBody397_0

def sourceBody397_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_14 sourceBody397_18

def sourceBody397_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_13 sourceBody397_19

def sourceBody397_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_12 sourceBody397_20

def sourceBody397_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_21

def sourceBody397_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_22

def sourceBody397_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 168#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody397_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 16)

def sourceBody397_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody397_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 14, 10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody397_0, 397, 8)) (some 307) ([18, 4]) (some (18, sourceBody397_26, 397, 9))

def sourceBody397_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_27 sourceBody397_3

def sourceBody397_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_28 sourceBody397_0

def sourceBody397_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_25 sourceBody397_29

def sourceBody397_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_24 sourceBody397_30

def sourceBody397_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody397_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody397_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody397_0, 397, 10)) (some 70) ([4]) (some (4, sourceBody397_33, 397, 11))

def sourceBody397_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_34 sourceBody397_3

def sourceBody397_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_35 sourceBody397_0

def sourceBody397_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_32 sourceBody397_36

def sourceBody397_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_37

def sourceBody397_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_38

def sourceBody397_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody397_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody397_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody397_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18, 4, 12]

def sourceBody397_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_43 sourceBody397_0

def sourceBody397_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_42 sourceBody397_44

def sourceBody397_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_41 sourceBody397_45

def sourceBody397_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_40 sourceBody397_46

def sourceBody397_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_39 sourceBody397_47

def sourceBody397_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_31 sourceBody397_48

def sourceBody397_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_49

def sourceBody397_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_50

def sourceBody397_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_51

def sourceBody397_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_52

def sourceBody397_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_53

def sourceBody397_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_54

def sourceBody397_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_23 sourceBody397_55

def sourceBody397_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_11 sourceBody397_56

def sourceBody397_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_57

def sourceBody397_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_58

def sourceBody397_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_5 sourceBody397_59

def sourceBody397_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_60

def sourceBody397_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody397_0 sourceBody397_61

def source397 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (397, 2, sourceBody397_62)
end InitECandidate.Proofs.WordStages
