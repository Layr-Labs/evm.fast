import InitECandidate.Proofs.WordStages.Source734
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody750_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody750_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody750_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody750_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody750_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody750_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody750_0, 750, 2)) (some 735) ([12, 10, 14]) (some (12, sourceBody750_4, 750, 3))

def sourceBody750_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody750_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_5 sourceBody750_6

def sourceBody750_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_7 sourceBody750_0

def sourceBody750_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_3 sourceBody750_8

def sourceBody750_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_2 sourceBody750_9

def sourceBody750_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_1 sourceBody750_10

def sourceBody750_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_0 sourceBody750_11

def sourceBody750_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_0 sourceBody750_12

def sourceBody750_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody750_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody750_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody750_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody750_0, 750, 4)) (some 735) ([12, 10, 14]) (some (12, sourceBody750_4, 750, 5))

def sourceBody750_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_17 sourceBody750_6

def sourceBody750_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_18 sourceBody750_0

def sourceBody750_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_16 sourceBody750_19

def sourceBody750_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_15 sourceBody750_20

def sourceBody750_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_14 sourceBody750_21

def sourceBody750_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_0 sourceBody750_22

def sourceBody750_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_0 sourceBody750_23

def sourceBody750_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_13 sourceBody750_24

def sourceBody750_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody750_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody750_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody750_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody750_0, 750, 6)) (some 735) ([12, 10, 14]) (some (12, sourceBody750_4, 750, 7))

def sourceBody750_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_29 sourceBody750_6

def sourceBody750_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_30 sourceBody750_0

def sourceBody750_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_28 sourceBody750_31

def sourceBody750_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_27 sourceBody750_32

def sourceBody750_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_26 sourceBody750_33

def sourceBody750_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_0 sourceBody750_34

def sourceBody750_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_0 sourceBody750_35

def sourceBody750_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_25 sourceBody750_36

def sourceBody750_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody750_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody750_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_39 sourceBody750_0

def sourceBody750_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_38 sourceBody750_40

def sourceBody750_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody750_37 sourceBody750_41

def source750 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (750, 4, sourceBody750_42)
end InitECandidate.Proofs.WordStages
