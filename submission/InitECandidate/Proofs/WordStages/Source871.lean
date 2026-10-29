import InitECandidate.Proofs.WordStages.Source855
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody871_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody871_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody871_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody871_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody871_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody871_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_4 sourceBody871_0

def sourceBody871_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_5 sourceBody871_0

def sourceBody871_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody871_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody871_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_8 sourceBody871_0

def sourceBody871_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_7 sourceBody871_9

def sourceBody871_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_0 sourceBody871_10

def sourceBody871_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody871_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody871_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_13 sourceBody871_0

def sourceBody871_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_14 sourceBody871_0

def sourceBody871_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_12 sourceBody871_15

def sourceBody871_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_0 sourceBody871_16

def sourceBody871_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody871_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_18 sourceBody871_2

def sourceBody871_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_17 sourceBody871_19

def sourceBody871_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_11 sourceBody871_20

def sourceBody871_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_6 sourceBody871_21

def sourceBody871_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_3 sourceBody871_22

def sourceBody871_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 3#64) sourceBody871_2 sourceBody871_23

def sourceBody871_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_24 sourceBody871_3

def sourceBody871_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody871_0, 871, 2)) (some 870) ([4]) (some (4, sourceBody871_25, 871, 3))

def sourceBody871_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_26 sourceBody871_3

def sourceBody871_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_27 sourceBody871_0

def sourceBody871_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_1 sourceBody871_28

def sourceBody871_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_0 sourceBody871_29

def sourceBody871_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_0 sourceBody871_30

def sourceBody871_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody871_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody871_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_33 sourceBody871_0

def sourceBody871_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_32 sourceBody871_34

def sourceBody871_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_31 sourceBody871_35

def sourceBody871_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_0 sourceBody871_36

def sourceBody871_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody871_0 sourceBody871_37

def source871 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (871, 2, sourceBody871_38)
end InitECandidate.Proofs.WordStages
