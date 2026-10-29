import InitECandidate.Proofs.WordStages.Source856
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody872_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody872_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody872_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody872_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody872_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody872_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_4 sourceBody872_0

def sourceBody872_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_5 sourceBody872_0

def sourceBody872_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody872_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody872_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_8 sourceBody872_0

def sourceBody872_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_7 sourceBody872_9

def sourceBody872_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_0 sourceBody872_10

def sourceBody872_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody872_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody872_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_13 sourceBody872_0

def sourceBody872_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_14 sourceBody872_0

def sourceBody872_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_12 sourceBody872_15

def sourceBody872_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_0 sourceBody872_16

def sourceBody872_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody872_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_18 sourceBody872_2

def sourceBody872_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_17 sourceBody872_19

def sourceBody872_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_11 sourceBody872_20

def sourceBody872_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_6 sourceBody872_21

def sourceBody872_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_3 sourceBody872_22

def sourceBody872_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 1#64) sourceBody872_2 sourceBody872_23

def sourceBody872_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_24 sourceBody872_3

def sourceBody872_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody872_0, 872, 2)) (some 871) ([4]) (some (4, sourceBody872_25, 872, 3))

def sourceBody872_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_26 sourceBody872_3

def sourceBody872_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_27 sourceBody872_0

def sourceBody872_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_1 sourceBody872_28

def sourceBody872_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_0 sourceBody872_29

def sourceBody872_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_0 sourceBody872_30

def sourceBody872_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody872_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody872_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_33 sourceBody872_0

def sourceBody872_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_32 sourceBody872_34

def sourceBody872_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_31 sourceBody872_35

def sourceBody872_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_0 sourceBody872_36

def sourceBody872_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody872_0 sourceBody872_37

def source872 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (872, 2, sourceBody872_38)
end InitECandidate.Proofs.WordStages
