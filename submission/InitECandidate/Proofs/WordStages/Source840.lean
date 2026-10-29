import InitECandidate.Proofs.WordStages.Source824
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody840_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody840_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 9#64]])

def sourceBody840_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody840_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody840_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody840_0, 840, 2)) (some 180) ([12]) (some (12, sourceBody840_3, 840, 3))

def sourceBody840_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody840_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_4 sourceBody840_5

def sourceBody840_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_6 sourceBody840_0

def sourceBody840_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_2 sourceBody840_7

def sourceBody840_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 8])

def sourceBody840_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody840_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody840_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody840_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody840_0, 840, 4)) (some 77) ([10, 16, 6]) (some (10, sourceBody840_12, 840, 5))

def sourceBody840_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_13 sourceBody840_5

def sourceBody840_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_14 sourceBody840_0

def sourceBody840_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_11 sourceBody840_15

def sourceBody840_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_10 sourceBody840_16

def sourceBody840_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_9 sourceBody840_17

def sourceBody840_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_18

def sourceBody840_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_19

def sourceBody840_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody840_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody840_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody840_0, 840, 6)) (some 178) ([10, 16]) (some (10, sourceBody840_12, 840, 7))

def sourceBody840_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_23 sourceBody840_5

def sourceBody840_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_24 sourceBody840_0

def sourceBody840_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_22 sourceBody840_25

def sourceBody840_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_21 sourceBody840_26

def sourceBody840_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_27

def sourceBody840_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_28

def sourceBody840_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_20 sourceBody840_29

def sourceBody840_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 14])

def sourceBody840_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody840_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_32 sourceBody840_0

def sourceBody840_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_31 sourceBody840_33

def sourceBody840_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_30 sourceBody840_34

def sourceBody840_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_8 sourceBody840_35

def sourceBody840_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_36

def sourceBody840_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_37

def sourceBody840_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_1 sourceBody840_38

def sourceBody840_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody840_0 sourceBody840_39

def source840 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (840, 3, sourceBody840_40)
end InitECandidate.Proofs.WordStages
