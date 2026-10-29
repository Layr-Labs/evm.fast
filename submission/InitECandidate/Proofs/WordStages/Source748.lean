import InitECandidate.Proofs.WordStages.Source732
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody748_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody748_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody748_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody748_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody748_0, 748, 2)) (some 731) ([6]) (some (6, sourceBody748_2, 748, 3))

def sourceBody748_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody748_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_3 sourceBody748_4

def sourceBody748_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_5 sourceBody748_0

def sourceBody748_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_1 sourceBody748_6

def sourceBody748_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_0 sourceBody748_7

def sourceBody748_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_0 sourceBody748_8

def sourceBody748_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody748_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody748_0, 748, 4)) (some 730) ([6]) (some (6, sourceBody748_2, 748, 5))

def sourceBody748_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_11 sourceBody748_4

def sourceBody748_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_12 sourceBody748_0

def sourceBody748_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_10 sourceBody748_13

def sourceBody748_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_0 sourceBody748_14

def sourceBody748_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_0 sourceBody748_15

def sourceBody748_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_9 sourceBody748_16

def sourceBody748_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody748_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody748_0, 748, 6)) (some 730) ([6]) (some (6, sourceBody748_2, 748, 7))

def sourceBody748_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_19 sourceBody748_4

def sourceBody748_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_20 sourceBody748_0

def sourceBody748_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_18 sourceBody748_21

def sourceBody748_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_0 sourceBody748_22

def sourceBody748_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_0 sourceBody748_23

def sourceBody748_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_17 sourceBody748_24

def sourceBody748_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody748_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody748_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_27 sourceBody748_0

def sourceBody748_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_26 sourceBody748_28

def sourceBody748_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody748_25 sourceBody748_29

def source748 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (748, 2, sourceBody748_30)
end InitECandidate.Proofs.WordStages
