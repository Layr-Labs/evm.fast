import InitECandidate.Proofs.WordStages.Source714
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody730_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody730_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody730_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody730_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody730_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody730_0, 730, 2)) (some 78) ([8, 4]) (some (8, sourceBody730_3, 730, 3))

def sourceBody730_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody730_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_4 sourceBody730_5

def sourceBody730_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_6 sourceBody730_0

def sourceBody730_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_2 sourceBody730_7

def sourceBody730_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_1 sourceBody730_8

def sourceBody730_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_0 sourceBody730_9

def sourceBody730_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_0 sourceBody730_10

def sourceBody730_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody730_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody730_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_13 sourceBody730_0

def sourceBody730_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_12 sourceBody730_14

def sourceBody730_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody730_11 sourceBody730_15

def source730 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (730, 2, sourceBody730_16)
end InitECandidate.Proofs.WordStages
