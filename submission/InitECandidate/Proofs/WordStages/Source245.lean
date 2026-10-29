import InitECandidate.Proofs.WordStages.Source229
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody245_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody245_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody245_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody245_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_2 sourceBody245_0

def sourceBody245_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_3 sourceBody245_0

def sourceBody245_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_1 sourceBody245_4

def sourceBody245_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_0 sourceBody245_5

def sourceBody245_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody245_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody245_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_7 sourceBody245_8

def sourceBody245_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_6 sourceBody245_9

def sourceBody245_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody245_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody245_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_12 sourceBody245_0

def sourceBody245_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_11 sourceBody245_13

def sourceBody245_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody245_10 sourceBody245_14

def source245 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (245, 2, sourceBody245_15)
end InitECandidate.Proofs.WordStages
