import InitECandidate.Proofs.WordStages.Source93
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody109_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody109_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody109_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody109_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody109_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody109_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody109_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody109_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody109_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 108) ([0, 26, 22, 30, 20, 28, 24, 32, 18]) (none)

def sourceBody109_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody109_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_8 sourceBody109_9

def sourceBody109_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_7 sourceBody109_10

def sourceBody109_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_6 sourceBody109_11

def sourceBody109_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_5 sourceBody109_12

def sourceBody109_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_4 sourceBody109_13

def sourceBody109_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_3 sourceBody109_14

def sourceBody109_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_2 sourceBody109_15

def sourceBody109_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_1 sourceBody109_16

def sourceBody109_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody109_0 sourceBody109_17

def source109 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (109, 9, sourceBody109_18)
end InitECandidate.Proofs.WordStages
