import InitECandidate.Proofs.WordStages.Source91
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody107_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody107_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody107_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody107_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody107_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody107_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody107_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody107_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody107_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 106) ([0, 26, 22, 30, 20, 28, 24, 32, 18]) (none)

def sourceBody107_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody107_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_8 sourceBody107_9

def sourceBody107_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_7 sourceBody107_10

def sourceBody107_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_6 sourceBody107_11

def sourceBody107_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_5 sourceBody107_12

def sourceBody107_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_4 sourceBody107_13

def sourceBody107_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_3 sourceBody107_14

def sourceBody107_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_2 sourceBody107_15

def sourceBody107_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_1 sourceBody107_16

def sourceBody107_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody107_0 sourceBody107_17

def source107 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (107, 9, sourceBody107_18)
end InitECandidate.Proofs.WordStages
