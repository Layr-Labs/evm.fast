import InitECandidate.Proofs.WordStages.Source733
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody749_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody749_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody749_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody749_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody749_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody749_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody749_0, 749, 2)) (some 734) ([12, 10, 14]) (some (12, sourceBody749_4, 749, 3))

def sourceBody749_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody749_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_5 sourceBody749_6

def sourceBody749_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_7 sourceBody749_0

def sourceBody749_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_3 sourceBody749_8

def sourceBody749_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_2 sourceBody749_9

def sourceBody749_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_1 sourceBody749_10

def sourceBody749_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_0 sourceBody749_11

def sourceBody749_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_0 sourceBody749_12

def sourceBody749_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody749_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody749_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody749_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody749_0, 749, 4)) (some 734) ([12, 10, 14]) (some (12, sourceBody749_4, 749, 5))

def sourceBody749_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_17 sourceBody749_6

def sourceBody749_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_18 sourceBody749_0

def sourceBody749_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_16 sourceBody749_19

def sourceBody749_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_15 sourceBody749_20

def sourceBody749_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_14 sourceBody749_21

def sourceBody749_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_0 sourceBody749_22

def sourceBody749_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_0 sourceBody749_23

def sourceBody749_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_13 sourceBody749_24

def sourceBody749_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody749_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody749_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody749_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody749_0, 749, 6)) (some 734) ([12, 10, 14]) (some (12, sourceBody749_4, 749, 7))

def sourceBody749_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_29 sourceBody749_6

def sourceBody749_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_30 sourceBody749_0

def sourceBody749_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_28 sourceBody749_31

def sourceBody749_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_27 sourceBody749_32

def sourceBody749_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_26 sourceBody749_33

def sourceBody749_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_0 sourceBody749_34

def sourceBody749_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_0 sourceBody749_35

def sourceBody749_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_25 sourceBody749_36

def sourceBody749_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody749_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody749_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_39 sourceBody749_0

def sourceBody749_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_38 sourceBody749_40

def sourceBody749_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody749_37 sourceBody749_41

def source749 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (749, 4, sourceBody749_42)
end InitECandidate.Proofs.WordStages
