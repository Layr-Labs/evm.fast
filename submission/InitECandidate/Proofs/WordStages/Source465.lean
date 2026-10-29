import InitECandidate.Proofs.WordStages.Source449
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody465_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody465_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody465_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody465_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody465_0, 465, 2)) (some 464) ([6]) (some (6, sourceBody465_2, 465, 3))

def sourceBody465_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody465_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_3 sourceBody465_4

def sourceBody465_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_5 sourceBody465_0

def sourceBody465_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_1 sourceBody465_6

def sourceBody465_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody465_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody465_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_9 sourceBody465_0

def sourceBody465_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_8 sourceBody465_10

def sourceBody465_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_7 sourceBody465_11

def sourceBody465_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_0 sourceBody465_12

def sourceBody465_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody465_0 sourceBody465_13

def source465 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (465, 2, sourceBody465_14)
end InitECandidate.Proofs.WordStages
