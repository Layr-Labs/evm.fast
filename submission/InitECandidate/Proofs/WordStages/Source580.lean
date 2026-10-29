import InitECandidate.Proofs.WordStages.Source564
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody580_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody580_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody580_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody580_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody580_0, 580, 2)) (some 470) ([6]) (some (6, sourceBody580_2, 580, 3))

def sourceBody580_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody580_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_3 sourceBody580_4

def sourceBody580_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_5 sourceBody580_0

def sourceBody580_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_1 sourceBody580_6

def sourceBody580_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_7

def sourceBody580_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_8

def sourceBody580_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody580_0, 580, 4)) (some 572) ([]) (some (6, sourceBody580_2, 580, 5))

def sourceBody580_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_10 sourceBody580_4

def sourceBody580_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_11 sourceBody580_0

def sourceBody580_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody580_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody580_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody580_0, 580, 6)) (some 477) ([2]) (some (2, sourceBody580_14, 580, 7))

def sourceBody580_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_15 sourceBody580_4

def sourceBody580_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_16 sourceBody580_0

def sourceBody580_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_13 sourceBody580_17

def sourceBody580_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_18

def sourceBody580_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_19

def sourceBody580_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody580_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody580_0, 580, 8)) (some 490) ([2]) (some (2, sourceBody580_14, 580, 9))

def sourceBody580_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_22 sourceBody580_4

def sourceBody580_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_23 sourceBody580_0

def sourceBody580_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_21 sourceBody580_24

def sourceBody580_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_25

def sourceBody580_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_26

def sourceBody580_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_20 sourceBody580_27

def sourceBody580_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody580_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody580_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_30 sourceBody580_0

def sourceBody580_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_29 sourceBody580_31

def sourceBody580_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_28 sourceBody580_32

def sourceBody580_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_12 sourceBody580_33

def sourceBody580_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_34

def sourceBody580_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_0 sourceBody580_35

def sourceBody580_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody580_9 sourceBody580_36

def source580 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (580, 1, sourceBody580_37)
end InitECandidate.Proofs.WordStages
