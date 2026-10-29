import InitECandidate.Proofs.WordStages.Source793
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody809_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody809_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody809_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody809_0, 809, 2)) (some 704) ([]) (some (4, sourceBody809_1, 809, 3))

def sourceBody809_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody809_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_2 sourceBody809_3

def sourceBody809_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_4 sourceBody809_0

def sourceBody809_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_0 sourceBody809_5

def sourceBody809_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_0 sourceBody809_6

def sourceBody809_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody809_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody809_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_9 sourceBody809_0

def sourceBody809_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_8 sourceBody809_10

def sourceBody809_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody809_7 sourceBody809_11

def source809 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (809, 1, sourceBody809_12)
end InitECandidate.Proofs.WordStages
