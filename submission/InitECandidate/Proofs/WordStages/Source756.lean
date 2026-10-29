import InitECandidate.Proofs.WordStages.Source740
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody756_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody756_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody756_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody756_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody756_0, 756, 2)) (some 748) ([6]) (some (6, sourceBody756_2, 756, 3))

def sourceBody756_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody756_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_3 sourceBody756_4

def sourceBody756_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_5 sourceBody756_0

def sourceBody756_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_1 sourceBody756_6

def sourceBody756_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_0 sourceBody756_7

def sourceBody756_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_0 sourceBody756_8

def sourceBody756_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody756_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody756_0, 756, 4)) (some 747) ([6]) (some (6, sourceBody756_2, 756, 5))

def sourceBody756_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_11 sourceBody756_4

def sourceBody756_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_12 sourceBody756_0

def sourceBody756_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_10 sourceBody756_13

def sourceBody756_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_0 sourceBody756_14

def sourceBody756_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_0 sourceBody756_15

def sourceBody756_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_9 sourceBody756_16

def sourceBody756_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody756_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody756_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_19 sourceBody756_0

def sourceBody756_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_18 sourceBody756_20

def sourceBody756_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody756_17 sourceBody756_21

def source756 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (756, 2, sourceBody756_22)
end InitECandidate.Proofs.WordStages
