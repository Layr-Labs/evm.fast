import InitECandidate.Proofs.WordStages.Source857
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody873_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody873_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody873_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody873_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody873_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody873_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_4 sourceBody873_0

def sourceBody873_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_5 sourceBody873_0

def sourceBody873_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody873_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody873_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_8 sourceBody873_0

def sourceBody873_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_7 sourceBody873_9

def sourceBody873_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_0 sourceBody873_10

def sourceBody873_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody873_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody873_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_13 sourceBody873_0

def sourceBody873_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_14 sourceBody873_0

def sourceBody873_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_12 sourceBody873_15

def sourceBody873_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_0 sourceBody873_16

def sourceBody873_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody873_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_18 sourceBody873_2

def sourceBody873_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_17 sourceBody873_19

def sourceBody873_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_11 sourceBody873_20

def sourceBody873_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_6 sourceBody873_21

def sourceBody873_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_3 sourceBody873_22

def sourceBody873_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 5#64) sourceBody873_2 sourceBody873_23

def sourceBody873_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_24 sourceBody873_3

def sourceBody873_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody873_0, 873, 2)) (some 872) ([4]) (some (4, sourceBody873_25, 873, 3))

def sourceBody873_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_26 sourceBody873_3

def sourceBody873_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_27 sourceBody873_0

def sourceBody873_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_1 sourceBody873_28

def sourceBody873_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_0 sourceBody873_29

def sourceBody873_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_0 sourceBody873_30

def sourceBody873_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody873_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody873_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_33 sourceBody873_0

def sourceBody873_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_32 sourceBody873_34

def sourceBody873_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_31 sourceBody873_35

def sourceBody873_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_0 sourceBody873_36

def sourceBody873_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody873_0 sourceBody873_37

def source873 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (873, 2, sourceBody873_38)
end InitECandidate.Proofs.WordStages
