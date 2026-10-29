import InitECandidate.Proofs.WordStages.Source225
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody241_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody241_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 31#64])
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody241_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody241_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody241_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody241_0, 241, 2)) (some 68) ([12]) (some (12, sourceBody241_3, 241, 3))

def sourceBody241_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody241_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_4 sourceBody241_5

def sourceBody241_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_6 sourceBody241_0

def sourceBody241_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_2 sourceBody241_7

def sourceBody241_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody241_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody241_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody241_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody241_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody241_0, 241, 4)) (some 77) ([10, 16, 6]) (some (10, sourceBody241_12, 241, 5))

def sourceBody241_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_13 sourceBody241_5

def sourceBody241_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_14 sourceBody241_0

def sourceBody241_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_11 sourceBody241_15

def sourceBody241_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_10 sourceBody241_16

def sourceBody241_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_9 sourceBody241_17

def sourceBody241_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_18

def sourceBody241_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_19

def sourceBody241_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 4])

def sourceBody241_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.var 4])

def sourceBody241_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody241_0, 241, 6)) (some 78) ([10, 16]) (some (10, sourceBody241_12, 241, 7))

def sourceBody241_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_23 sourceBody241_5

def sourceBody241_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_24 sourceBody241_0

def sourceBody241_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_22 sourceBody241_25

def sourceBody241_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_21 sourceBody241_26

def sourceBody241_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_27

def sourceBody241_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_28

def sourceBody241_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_20 sourceBody241_29

def sourceBody241_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody241_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody241_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 10]

def sourceBody241_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_33 sourceBody241_0

def sourceBody241_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_32 sourceBody241_34

def sourceBody241_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_31 sourceBody241_35

def sourceBody241_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_30 sourceBody241_36

def sourceBody241_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_8 sourceBody241_37

def sourceBody241_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_38

def sourceBody241_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_39

def sourceBody241_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_1 sourceBody241_40

def sourceBody241_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody241_0 sourceBody241_41

def source241 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (241, 3, sourceBody241_42)
end InitECandidate.Proofs.WordStages
