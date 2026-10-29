import InitECandidate.Proofs.WordStages.Source270
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody286_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody286_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody286_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody286_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_2 sourceBody286_0

def sourceBody286_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_3 sourceBody286_0

def sourceBody286_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_1 sourceBody286_4

def sourceBody286_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_0 sourceBody286_5

def sourceBody286_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody286_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody286_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_7 sourceBody286_8

def sourceBody286_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_6 sourceBody286_9

def sourceBody286_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody286_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody286_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_12 sourceBody286_0

def sourceBody286_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_11 sourceBody286_13

def sourceBody286_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody286_10 sourceBody286_14

def source286 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (286, 2, sourceBody286_15)
end InitECandidate.Proofs.WordStages
