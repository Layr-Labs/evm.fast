import InitECandidate.Proofs.WordStages.Source858
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody874_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody874_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody874_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody874_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody874_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody874_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_4 sourceBody874_0

def sourceBody874_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_5 sourceBody874_0

def sourceBody874_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody874_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody874_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_8 sourceBody874_0

def sourceBody874_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_7 sourceBody874_9

def sourceBody874_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_0 sourceBody874_10

def sourceBody874_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody874_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody874_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_13 sourceBody874_0

def sourceBody874_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_14 sourceBody874_0

def sourceBody874_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_12 sourceBody874_15

def sourceBody874_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_0 sourceBody874_16

def sourceBody874_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody874_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_18 sourceBody874_2

def sourceBody874_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_17 sourceBody874_19

def sourceBody874_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_11 sourceBody874_20

def sourceBody874_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_6 sourceBody874_21

def sourceBody874_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_3 sourceBody874_22

def sourceBody874_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 7#64) sourceBody874_2 sourceBody874_23

def sourceBody874_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_24 sourceBody874_3

def sourceBody874_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody874_0, 874, 2)) (some 873) ([4]) (some (4, sourceBody874_25, 874, 3))

def sourceBody874_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_26 sourceBody874_3

def sourceBody874_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_27 sourceBody874_0

def sourceBody874_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_1 sourceBody874_28

def sourceBody874_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_0 sourceBody874_29

def sourceBody874_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_0 sourceBody874_30

def sourceBody874_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody874_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody874_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_33 sourceBody874_0

def sourceBody874_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_32 sourceBody874_34

def sourceBody874_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_31 sourceBody874_35

def sourceBody874_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_0 sourceBody874_36

def sourceBody874_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody874_0 sourceBody874_37

def source874 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (874, 2, sourceBody874_38)
end InitECandidate.Proofs.WordStages
