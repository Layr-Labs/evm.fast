import InitECandidate.Proofs.WordStages.Source71
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody87_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody87_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody87_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody87_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody87_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody87_0, 87, 2)) (some 86) ([6, 8]) (some (6, sourceBody87_3, 87, 3))

def sourceBody87_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody87_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_4 sourceBody87_5

def sourceBody87_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_6 sourceBody87_0

def sourceBody87_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_2 sourceBody87_7

def sourceBody87_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_1 sourceBody87_8

def sourceBody87_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_0 sourceBody87_9

def sourceBody87_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_0 sourceBody87_10

def sourceBody87_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody87_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody87_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody87_0, 87, 4)) (some 86) ([6, 8]) (some (6, sourceBody87_3, 87, 5))

def sourceBody87_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_14 sourceBody87_5

def sourceBody87_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_15 sourceBody87_0

def sourceBody87_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_13 sourceBody87_16

def sourceBody87_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_12 sourceBody87_17

def sourceBody87_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_0 sourceBody87_18

def sourceBody87_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_0 sourceBody87_19

def sourceBody87_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_11 sourceBody87_20

def sourceBody87_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody87_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody87_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_23 sourceBody87_0

def sourceBody87_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_22 sourceBody87_24

def sourceBody87_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody87_21 sourceBody87_25

def source87 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (87, 3, sourceBody87_26)
end InitECandidate.Proofs.WordStages
