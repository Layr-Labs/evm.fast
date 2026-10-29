import InitECandidate.Proofs.WordStages.Source731
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody747_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody747_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody747_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody747_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody747_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody747_0, 747, 2)) (some 78) ([8, 4]) (some (8, sourceBody747_3, 747, 3))

def sourceBody747_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody747_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_4 sourceBody747_5

def sourceBody747_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_6 sourceBody747_0

def sourceBody747_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_2 sourceBody747_7

def sourceBody747_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_1 sourceBody747_8

def sourceBody747_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_0 sourceBody747_9

def sourceBody747_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_0 sourceBody747_10

def sourceBody747_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody747_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody747_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_13 sourceBody747_0

def sourceBody747_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_12 sourceBody747_14

def sourceBody747_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody747_11 sourceBody747_15

def source747 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (747, 2, sourceBody747_16)
end InitECandidate.Proofs.WordStages
