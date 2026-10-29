import InitECandidate.Proofs.WordStages.Source861
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody877_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody877_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody877_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody877_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody877_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody877_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody877_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_5 sourceBody877_0

def sourceBody877_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_6 sourceBody877_0

def sourceBody877_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody877_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_8 sourceBody877_0

def sourceBody877_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_9 sourceBody877_0

def sourceBody877_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 536#64])

def sourceBody877_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody877_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody877_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 14

def sourceBody877_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_14 sourceBody877_0

def sourceBody877_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_13 sourceBody877_15

def sourceBody877_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_16 sourceBody877_0

def sourceBody877_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_12 sourceBody877_17

def sourceBody877_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_18

def sourceBody877_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_11 sourceBody877_19

def sourceBody877_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_20

def sourceBody877_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_10 sourceBody877_21

def sourceBody877_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_7 sourceBody877_22

def sourceBody877_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_4 sourceBody877_23

def sourceBody877_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 9#64) sourceBody877_3 sourceBody877_24

def sourceBody877_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_25 sourceBody877_4

def sourceBody877_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody877_0, 877, 2)) (some 876) ([10]) (some (10, sourceBody877_26, 877, 3))

def sourceBody877_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_27 sourceBody877_4

def sourceBody877_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_28 sourceBody877_0

def sourceBody877_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_2 sourceBody877_29

def sourceBody877_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_30

def sourceBody877_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_31

def sourceBody877_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody877_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody877_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_34 sourceBody877_0

def sourceBody877_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_33 sourceBody877_35

def sourceBody877_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_32 sourceBody877_36

def sourceBody877_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_1 sourceBody877_37

def sourceBody877_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_38

def sourceBody877_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_39

def sourceBody877_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody877_0 sourceBody877_40

def source877 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (877, 2, sourceBody877_41)
end InitECandidate.Proofs.WordStages
