import InitECandidate.Proofs.WordStages.Source293
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody309_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody309_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody309_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody309_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody309_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody309_0, 309, 2)) (some 305) ([12, 10]) (some (12, sourceBody309_3, 309, 3))

def sourceBody309_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody309_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_4 sourceBody309_5

def sourceBody309_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_6 sourceBody309_0

def sourceBody309_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_2 sourceBody309_7

def sourceBody309_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_1 sourceBody309_8

def sourceBody309_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody309_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody309_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 308) ([0, 12, 10]) (none)

def sourceBody309_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_12 sourceBody309_0

def sourceBody309_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_11 sourceBody309_13

def sourceBody309_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_10 sourceBody309_14

def sourceBody309_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_9 sourceBody309_15

def sourceBody309_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_0 sourceBody309_16

def sourceBody309_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody309_0 sourceBody309_17

def source309 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (309, 4, sourceBody309_18)
end InitECandidate.Proofs.WordStages
