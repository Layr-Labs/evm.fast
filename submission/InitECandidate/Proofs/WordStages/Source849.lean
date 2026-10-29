import InitECandidate.Proofs.WordStages.Source833
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody849_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody849_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody849_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody849_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody849_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody849_0, 849, 2)) (some 187) ([6, 10]) (some (6, sourceBody849_3, 849, 3))

def sourceBody849_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody849_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_4 sourceBody849_5

def sourceBody849_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_6 sourceBody849_0

def sourceBody849_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_2 sourceBody849_7

def sourceBody849_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_1 sourceBody849_8

def sourceBody849_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody849_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody849_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody849_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody849_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 8) sourceBody849_12 sourceBody849_13

def sourceBody849_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_14 sourceBody849_5

def sourceBody849_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody849_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody849_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody849_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_18 sourceBody849_0

def sourceBody849_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_17 sourceBody849_19

def sourceBody849_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody849_20 sourceBody849_0

def sourceBody849_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_21 sourceBody849_5

def sourceBody849_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_22 sourceBody849_0

def sourceBody849_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_16 sourceBody849_23

def sourceBody849_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_15 sourceBody849_24

def sourceBody849_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_11 sourceBody849_25

def sourceBody849_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_10 sourceBody849_26

def sourceBody849_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody849_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody849_0, 849, 4)) (some 399) ([10]) (some (10, sourceBody849_28, 849, 5))

def sourceBody849_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_29 sourceBody849_5

def sourceBody849_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_30 sourceBody849_0

def sourceBody849_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_2 sourceBody849_31

def sourceBody849_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody849_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody849_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_34 sourceBody849_0

def sourceBody849_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_33 sourceBody849_35

def sourceBody849_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_32 sourceBody849_36

def sourceBody849_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_0 sourceBody849_37

def sourceBody849_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_0 sourceBody849_38

def sourceBody849_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_27 sourceBody849_39

def sourceBody849_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_9 sourceBody849_40

def sourceBody849_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_0 sourceBody849_41

def sourceBody849_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody849_0 sourceBody849_42

def source849 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (849, 3, sourceBody849_43)
end InitECandidate.Proofs.WordStages
