import InitECandidate.Proofs.WordStages.Source860
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody876_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody876_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody876_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody876_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody876_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody876_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_4 sourceBody876_0

def sourceBody876_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_5 sourceBody876_0

def sourceBody876_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody876_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody876_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_8 sourceBody876_0

def sourceBody876_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_7 sourceBody876_9

def sourceBody876_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_0 sourceBody876_10

def sourceBody876_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody876_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody876_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_13 sourceBody876_0

def sourceBody876_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_14 sourceBody876_0

def sourceBody876_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_12 sourceBody876_15

def sourceBody876_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_0 sourceBody876_16

def sourceBody876_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody876_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_18 sourceBody876_2

def sourceBody876_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_17 sourceBody876_19

def sourceBody876_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_11 sourceBody876_20

def sourceBody876_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_6 sourceBody876_21

def sourceBody876_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_3 sourceBody876_22

def sourceBody876_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 8#64) sourceBody876_2 sourceBody876_23

def sourceBody876_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_24 sourceBody876_3

def sourceBody876_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody876_0, 876, 2)) (some 875) ([4]) (some (4, sourceBody876_25, 876, 3))

def sourceBody876_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_26 sourceBody876_3

def sourceBody876_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_27 sourceBody876_0

def sourceBody876_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_1 sourceBody876_28

def sourceBody876_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_0 sourceBody876_29

def sourceBody876_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_0 sourceBody876_30

def sourceBody876_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody876_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody876_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_33 sourceBody876_0

def sourceBody876_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_32 sourceBody876_34

def sourceBody876_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_31 sourceBody876_35

def sourceBody876_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_0 sourceBody876_36

def sourceBody876_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody876_0 sourceBody876_37

def source876 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (876, 2, sourceBody876_38)
end InitECandidate.Proofs.WordStages
