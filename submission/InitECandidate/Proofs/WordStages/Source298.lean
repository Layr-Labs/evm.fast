import InitECandidate.Proofs.WordStages.Source282
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody298_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody298_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 176#64)

def sourceBody298_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody298_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody298_0, 298, 2)) (some 68) ([8]) (some (8, sourceBody298_2, 298, 3))

def sourceBody298_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody298_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_3 sourceBody298_4

def sourceBody298_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_5 sourceBody298_0

def sourceBody298_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_1 sourceBody298_6

def sourceBody298_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody298_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 176#64)

def sourceBody298_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody298_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody298_0, 298, 4)) (some 78) ([2, 6]) (some (2, sourceBody298_10, 298, 5))

def sourceBody298_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_11 sourceBody298_4

def sourceBody298_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_12 sourceBody298_0

def sourceBody298_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_9 sourceBody298_13

def sourceBody298_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_8 sourceBody298_14

def sourceBody298_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_0 sourceBody298_15

def sourceBody298_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_0 sourceBody298_16

def sourceBody298_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody298_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody298_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody298_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody298_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_21 sourceBody298_0

def sourceBody298_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_20 sourceBody298_22

def sourceBody298_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_23 sourceBody298_0

def sourceBody298_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_19 sourceBody298_24

def sourceBody298_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_0 sourceBody298_25

def sourceBody298_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_18 sourceBody298_26

def sourceBody298_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_0 sourceBody298_27

def sourceBody298_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_17 sourceBody298_28

def sourceBody298_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody298_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody298_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_31 sourceBody298_0

def sourceBody298_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_30 sourceBody298_32

def sourceBody298_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_29 sourceBody298_33

def sourceBody298_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_7 sourceBody298_34

def sourceBody298_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_0 sourceBody298_35

def sourceBody298_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody298_0 sourceBody298_36

def source298 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (298, 1, sourceBody298_37)
end InitECandidate.Proofs.WordStages
