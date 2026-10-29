import InitECandidate.Proofs.WordStages.Source854
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody870_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody870_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody870_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody870_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody870_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody870_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_4 sourceBody870_0

def sourceBody870_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_5 sourceBody870_0

def sourceBody870_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody870_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody870_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_8 sourceBody870_0

def sourceBody870_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_7 sourceBody870_9

def sourceBody870_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_0 sourceBody870_10

def sourceBody870_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody870_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody870_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_13 sourceBody870_0

def sourceBody870_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_14 sourceBody870_0

def sourceBody870_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_12 sourceBody870_15

def sourceBody870_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_0 sourceBody870_16

def sourceBody870_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody870_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_18 sourceBody870_2

def sourceBody870_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_17 sourceBody870_19

def sourceBody870_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_11 sourceBody870_20

def sourceBody870_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_6 sourceBody870_21

def sourceBody870_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_3 sourceBody870_22

def sourceBody870_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 4#64) sourceBody870_2 sourceBody870_23

def sourceBody870_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_24 sourceBody870_3

def sourceBody870_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody870_0, 870, 2)) (some 869) ([4]) (some (4, sourceBody870_25, 870, 3))

def sourceBody870_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_26 sourceBody870_3

def sourceBody870_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_27 sourceBody870_0

def sourceBody870_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_1 sourceBody870_28

def sourceBody870_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_0 sourceBody870_29

def sourceBody870_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_0 sourceBody870_30

def sourceBody870_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody870_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody870_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_33 sourceBody870_0

def sourceBody870_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_32 sourceBody870_34

def sourceBody870_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_31 sourceBody870_35

def sourceBody870_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_0 sourceBody870_36

def sourceBody870_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody870_0 sourceBody870_37

def source870 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (870, 2, sourceBody870_38)
end InitECandidate.Proofs.WordStages
