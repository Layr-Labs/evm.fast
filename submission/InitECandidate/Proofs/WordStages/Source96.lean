import InitECandidate.Proofs.WordStages.Source80
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody96_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody96_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody96_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody96_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody96_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody96_0, 96, 2)) (some 94) ([10, 8]) (some (10, sourceBody96_3, 96, 3))

def sourceBody96_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody96_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_4 sourceBody96_5

def sourceBody96_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_6 sourceBody96_0

def sourceBody96_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_2 sourceBody96_7

def sourceBody96_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_1 sourceBody96_8

def sourceBody96_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody96_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody96_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_11 sourceBody96_0

def sourceBody96_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_10 sourceBody96_12

def sourceBody96_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_9 sourceBody96_13

def sourceBody96_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_0 sourceBody96_14

def sourceBody96_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_0 sourceBody96_15

def sourceBody96_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_0 sourceBody96_16

def sourceBody96_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody96_0 sourceBody96_17

def source96 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (96, 3, sourceBody96_18)
end InitECandidate.Proofs.WordStages
