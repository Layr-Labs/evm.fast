import InitECandidate.Proofs.WordStages.Source430
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody446_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody446_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody446_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody446_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody446_0, 446, 2)) (some 439) ([6]) (some (6, sourceBody446_2, 446, 3))

def sourceBody446_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody446_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_3 sourceBody446_4

def sourceBody446_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_5 sourceBody446_0

def sourceBody446_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_1 sourceBody446_6

def sourceBody446_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_0 sourceBody446_7

def sourceBody446_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_0 sourceBody446_8

def sourceBody446_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody446_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody446_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_11 sourceBody446_0

def sourceBody446_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_10 sourceBody446_12

def sourceBody446_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody446_9 sourceBody446_13

def source446 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (446, 2, sourceBody446_14)
end InitECandidate.Proofs.WordStages
