import InitECandidate.Proofs.WordStages.Source762
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody778_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody778_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody778_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody778_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody778_0, 778, 2)) (some 731) ([6]) (some (6, sourceBody778_2, 778, 3))

def sourceBody778_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody778_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_3 sourceBody778_4

def sourceBody778_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_5 sourceBody778_0

def sourceBody778_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_1 sourceBody778_6

def sourceBody778_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_0 sourceBody778_7

def sourceBody778_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_0 sourceBody778_8

def sourceBody778_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody778_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody778_0, 778, 4)) (some 731) ([6]) (some (6, sourceBody778_2, 778, 5))

def sourceBody778_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_11 sourceBody778_4

def sourceBody778_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_12 sourceBody778_0

def sourceBody778_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_10 sourceBody778_13

def sourceBody778_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_0 sourceBody778_14

def sourceBody778_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_0 sourceBody778_15

def sourceBody778_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_9 sourceBody778_16

def sourceBody778_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody778_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody778_0, 778, 6)) (some 730) ([6]) (some (6, sourceBody778_2, 778, 7))

def sourceBody778_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_19 sourceBody778_4

def sourceBody778_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_20 sourceBody778_0

def sourceBody778_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_18 sourceBody778_21

def sourceBody778_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_0 sourceBody778_22

def sourceBody778_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_0 sourceBody778_23

def sourceBody778_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_17 sourceBody778_24

def sourceBody778_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody778_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody778_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_27 sourceBody778_0

def sourceBody778_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_26 sourceBody778_28

def sourceBody778_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody778_25 sourceBody778_29

def source778 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (778, 2, sourceBody778_30)
end InitECandidate.Proofs.WordStages
