import InitECandidate.Proofs.WordStages.Source735
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody751_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody751_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody751_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody751_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody751_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody751_0, 751, 2)) (some 736) ([6, 8]) (some (6, sourceBody751_3, 751, 3))

def sourceBody751_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody751_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_4 sourceBody751_5

def sourceBody751_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_6 sourceBody751_0

def sourceBody751_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_2 sourceBody751_7

def sourceBody751_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_1 sourceBody751_8

def sourceBody751_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_0 sourceBody751_9

def sourceBody751_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_0 sourceBody751_10

def sourceBody751_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody751_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody751_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody751_0, 751, 4)) (some 736) ([6, 8]) (some (6, sourceBody751_3, 751, 5))

def sourceBody751_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_14 sourceBody751_5

def sourceBody751_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_15 sourceBody751_0

def sourceBody751_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_13 sourceBody751_16

def sourceBody751_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_12 sourceBody751_17

def sourceBody751_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_0 sourceBody751_18

def sourceBody751_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_0 sourceBody751_19

def sourceBody751_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_11 sourceBody751_20

def sourceBody751_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody751_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody751_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody751_0, 751, 6)) (some 736) ([6, 8]) (some (6, sourceBody751_3, 751, 7))

def sourceBody751_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_24 sourceBody751_5

def sourceBody751_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_25 sourceBody751_0

def sourceBody751_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_23 sourceBody751_26

def sourceBody751_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_22 sourceBody751_27

def sourceBody751_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_0 sourceBody751_28

def sourceBody751_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_0 sourceBody751_29

def sourceBody751_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_21 sourceBody751_30

def sourceBody751_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody751_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody751_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_33 sourceBody751_0

def sourceBody751_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_32 sourceBody751_34

def sourceBody751_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody751_31 sourceBody751_35

def source751 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (751, 3, sourceBody751_36)
end InitECandidate.Proofs.WordStages
