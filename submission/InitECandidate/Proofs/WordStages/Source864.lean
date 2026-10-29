import InitECandidate.Proofs.WordStages.Source848
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody864_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody864_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody864_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody864_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody864_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody864_0, 864, 2)) (some 95) ([8, 4]) (some (8, sourceBody864_3, 864, 3))

def sourceBody864_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody864_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_4 sourceBody864_5

def sourceBody864_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_6 sourceBody864_0

def sourceBody864_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_2 sourceBody864_7

def sourceBody864_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_1 sourceBody864_8

def sourceBody864_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody864_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody864_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_11 sourceBody864_0

def sourceBody864_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_10 sourceBody864_12

def sourceBody864_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_9 sourceBody864_13

def sourceBody864_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_0 sourceBody864_14

def sourceBody864_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody864_0 sourceBody864_15

def source864 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (864, 2, sourceBody864_16)
end InitECandidate.Proofs.WordStages
