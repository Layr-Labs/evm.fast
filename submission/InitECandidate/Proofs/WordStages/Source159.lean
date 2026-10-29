import InitECandidate.Proofs.WordStages.Source143
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody159_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody159_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody159_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody159_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_2 sourceBody159_0

def sourceBody159_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_3 sourceBody159_0

def sourceBody159_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_1 sourceBody159_4

def sourceBody159_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_0 sourceBody159_5

def sourceBody159_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody159_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody159_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_7 sourceBody159_8

def sourceBody159_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_6 sourceBody159_9

def sourceBody159_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody159_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody159_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_12 sourceBody159_0

def sourceBody159_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_11 sourceBody159_13

def sourceBody159_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody159_10 sourceBody159_14

def source159 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (159, 2, sourceBody159_15)
end InitECandidate.Proofs.WordStages
