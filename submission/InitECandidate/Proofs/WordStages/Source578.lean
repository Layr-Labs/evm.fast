import InitECandidate.Proofs.WordStages.Source562
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody578_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody578_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody578_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody578_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody578_0, 578, 2)) (some 470) ([6]) (some (6, sourceBody578_2, 578, 3))

def sourceBody578_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody578_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_3 sourceBody578_4

def sourceBody578_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_5 sourceBody578_0

def sourceBody578_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_1 sourceBody578_6

def sourceBody578_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_7

def sourceBody578_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_8

def sourceBody578_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody578_0, 578, 4)) (some 572) ([]) (some (6, sourceBody578_2, 578, 5))

def sourceBody578_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_10 sourceBody578_4

def sourceBody578_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_11 sourceBody578_0

def sourceBody578_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody578_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody578_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody578_0, 578, 6)) (some 477) ([2]) (some (2, sourceBody578_14, 578, 7))

def sourceBody578_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_15 sourceBody578_4

def sourceBody578_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_16 sourceBody578_0

def sourceBody578_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_13 sourceBody578_17

def sourceBody578_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_18

def sourceBody578_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_19

def sourceBody578_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody578_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody578_0, 578, 8)) (some 490) ([2]) (some (2, sourceBody578_14, 578, 9))

def sourceBody578_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_22 sourceBody578_4

def sourceBody578_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_23 sourceBody578_0

def sourceBody578_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_21 sourceBody578_24

def sourceBody578_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_25

def sourceBody578_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_26

def sourceBody578_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_20 sourceBody578_27

def sourceBody578_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody578_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody578_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_30 sourceBody578_0

def sourceBody578_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_29 sourceBody578_31

def sourceBody578_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_28 sourceBody578_32

def sourceBody578_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_12 sourceBody578_33

def sourceBody578_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_34

def sourceBody578_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_0 sourceBody578_35

def sourceBody578_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody578_9 sourceBody578_36

def source578 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (578, 1, sourceBody578_37)
end InitECandidate.Proofs.WordStages
