import InitECandidate.Proofs.WordStages.Source276
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody292_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody292_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody292_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody292_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody292_0, 292, 2)) (some 68) ([12]) (some (12, sourceBody292_2, 292, 3))

def sourceBody292_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody292_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_3 sourceBody292_4

def sourceBody292_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_5 sourceBody292_0

def sourceBody292_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_1 sourceBody292_6

def sourceBody292_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody292_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody292_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody292_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody292_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody292_0, 292, 4)) (some 77) ([18, 10, 14]) (some (18, sourceBody292_11, 292, 5))

def sourceBody292_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_12 sourceBody292_4

def sourceBody292_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_13 sourceBody292_0

def sourceBody292_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_10 sourceBody292_14

def sourceBody292_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_9 sourceBody292_15

def sourceBody292_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_8 sourceBody292_16

def sourceBody292_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_0 sourceBody292_17

def sourceBody292_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_0 sourceBody292_18

def sourceBody292_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 4])

def sourceBody292_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody292_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody292_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody292_0, 292, 6)) (some 77) ([18, 10, 14]) (some (18, sourceBody292_11, 292, 7))

def sourceBody292_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_23 sourceBody292_4

def sourceBody292_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_24 sourceBody292_0

def sourceBody292_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_22 sourceBody292_25

def sourceBody292_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_21 sourceBody292_26

def sourceBody292_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_20 sourceBody292_27

def sourceBody292_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_0 sourceBody292_28

def sourceBody292_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_0 sourceBody292_29

def sourceBody292_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_19 sourceBody292_30

def sourceBody292_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody292_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody292_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_33 sourceBody292_0

def sourceBody292_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_32 sourceBody292_34

def sourceBody292_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_31 sourceBody292_35

def sourceBody292_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_7 sourceBody292_36

def sourceBody292_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_0 sourceBody292_37

def sourceBody292_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody292_0 sourceBody292_38

def source292 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (292, 5, sourceBody292_39)
end InitECandidate.Proofs.WordStages
