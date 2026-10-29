import InitECandidate.Proofs.WordStages.Source664
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody680_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody680_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody680_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody680_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody680_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody680_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody680_0, 680, 2)) (some 679) ([10, 8]) (some (10, sourceBody680_4, 680, 3))

def sourceBody680_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody680_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_5 sourceBody680_6

def sourceBody680_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_7 sourceBody680_0

def sourceBody680_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_3 sourceBody680_8

def sourceBody680_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_2 sourceBody680_9

def sourceBody680_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_10

def sourceBody680_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_11

def sourceBody680_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody680_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody680_0, 680, 4)) (some 679) ([10, 8]) (some (10, sourceBody680_4, 680, 5))

def sourceBody680_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_14 sourceBody680_6

def sourceBody680_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_15 sourceBody680_0

def sourceBody680_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_13 sourceBody680_16

def sourceBody680_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_2 sourceBody680_17

def sourceBody680_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_18

def sourceBody680_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_19

def sourceBody680_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_12 sourceBody680_20

def sourceBody680_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody680_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody680_0, 680, 6)) (some 678) ([10, 8]) (some (10, sourceBody680_4, 680, 7))

def sourceBody680_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_23 sourceBody680_6

def sourceBody680_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_24 sourceBody680_0

def sourceBody680_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_22 sourceBody680_25

def sourceBody680_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_2 sourceBody680_26

def sourceBody680_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_27

def sourceBody680_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_28

def sourceBody680_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_21 sourceBody680_29

def sourceBody680_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody680_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody680_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_32 sourceBody680_0

def sourceBody680_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_31 sourceBody680_33

def sourceBody680_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_30 sourceBody680_34

def sourceBody680_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_1 sourceBody680_35

def sourceBody680_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody680_0 sourceBody680_36

def source680 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (680, 3, sourceBody680_37)
end InitECandidate.Proofs.WordStages
