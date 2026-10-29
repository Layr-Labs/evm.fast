import InitECandidate.Proofs.WordStages.Source859
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody875_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody875_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody875_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody875_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody875_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody875_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_4 sourceBody875_0

def sourceBody875_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_5 sourceBody875_0

def sourceBody875_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody875_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 70#64])

def sourceBody875_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_8 sourceBody875_0

def sourceBody875_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_7 sourceBody875_9

def sourceBody875_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_0 sourceBody875_10

def sourceBody875_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody875_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody875_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_13 sourceBody875_0

def sourceBody875_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_14 sourceBody875_0

def sourceBody875_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_12 sourceBody875_15

def sourceBody875_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_0 sourceBody875_16

def sourceBody875_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody875_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_18 sourceBody875_2

def sourceBody875_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_17 sourceBody875_19

def sourceBody875_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_11 sourceBody875_20

def sourceBody875_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_6 sourceBody875_21

def sourceBody875_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_3 sourceBody875_22

def sourceBody875_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 6#64) sourceBody875_2 sourceBody875_23

def sourceBody875_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_24 sourceBody875_3

def sourceBody875_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody875_0, 875, 2)) (some 874) ([4]) (some (4, sourceBody875_25, 875, 3))

def sourceBody875_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_26 sourceBody875_3

def sourceBody875_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_27 sourceBody875_0

def sourceBody875_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_1 sourceBody875_28

def sourceBody875_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_0 sourceBody875_29

def sourceBody875_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_0 sourceBody875_30

def sourceBody875_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody875_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody875_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_33 sourceBody875_0

def sourceBody875_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_32 sourceBody875_34

def sourceBody875_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_31 sourceBody875_35

def sourceBody875_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_0 sourceBody875_36

def sourceBody875_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody875_0 sourceBody875_37

def source875 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (875, 2, sourceBody875_38)
end InitECandidate.Proofs.WordStages
