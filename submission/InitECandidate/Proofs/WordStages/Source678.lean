import InitECandidate.Proofs.WordStages.Source662
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody678_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody678_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody678_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody678_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody678_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody678_0, 678, 2)) (some 78) ([6, 8]) (some (6, sourceBody678_3, 678, 3))

def sourceBody678_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody678_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_4 sourceBody678_5

def sourceBody678_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_6 sourceBody678_0

def sourceBody678_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_2 sourceBody678_7

def sourceBody678_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_1 sourceBody678_8

def sourceBody678_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_0 sourceBody678_9

def sourceBody678_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_0 sourceBody678_10

def sourceBody678_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody678_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody678_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_13 sourceBody678_0

def sourceBody678_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_12 sourceBody678_14

def sourceBody678_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody678_11 sourceBody678_15

def source678 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (678, 3, sourceBody678_16)
end InitECandidate.Proofs.WordStages
