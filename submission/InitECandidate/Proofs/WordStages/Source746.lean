import InitECandidate.Proofs.WordStages.Source730
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody746_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody746_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody746_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody746_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody746_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody746_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody746_0, 746, 2)) (some 77) ([6, 10, 8]) (some (6, sourceBody746_4, 746, 3))

def sourceBody746_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody746_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_5 sourceBody746_6

def sourceBody746_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_7 sourceBody746_0

def sourceBody746_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_3 sourceBody746_8

def sourceBody746_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_2 sourceBody746_9

def sourceBody746_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_1 sourceBody746_10

def sourceBody746_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_0 sourceBody746_11

def sourceBody746_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_0 sourceBody746_12

def sourceBody746_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody746_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody746_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_15 sourceBody746_0

def sourceBody746_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_14 sourceBody746_16

def sourceBody746_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody746_13 sourceBody746_17

def source746 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (746, 3, sourceBody746_18)
end InitECandidate.Proofs.WordStages
