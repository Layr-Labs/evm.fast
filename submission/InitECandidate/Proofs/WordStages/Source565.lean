import InitECandidate.Proofs.WordStages.Source549
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody565_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody565_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody565_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody565_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody565_0, 565, 2)) (some 407) ([12]) (some (12, sourceBody565_2, 565, 3))

def sourceBody565_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody565_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_3 sourceBody565_4

def sourceBody565_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_5 sourceBody565_0

def sourceBody565_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_1 sourceBody565_6

def sourceBody565_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody565_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody565_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody565_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody565_0, 565, 4)) (some 408) ([10, 8]) (some (10, sourceBody565_10, 565, 5))

def sourceBody565_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_11 sourceBody565_4

def sourceBody565_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_12 sourceBody565_0

def sourceBody565_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_9 sourceBody565_13

def sourceBody565_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_8 sourceBody565_14

def sourceBody565_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody565_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody565_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 8]

def sourceBody565_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_18 sourceBody565_0

def sourceBody565_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_17 sourceBody565_19

def sourceBody565_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_16 sourceBody565_20

def sourceBody565_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_15 sourceBody565_21

def sourceBody565_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_0 sourceBody565_22

def sourceBody565_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_0 sourceBody565_23

def sourceBody565_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_0 sourceBody565_24

def sourceBody565_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_0 sourceBody565_25

def sourceBody565_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_7 sourceBody565_26

def sourceBody565_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_0 sourceBody565_27

def sourceBody565_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody565_0 sourceBody565_28

def source565 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (565, 2, sourceBody565_29)
end InitECandidate.Proofs.WordStages
