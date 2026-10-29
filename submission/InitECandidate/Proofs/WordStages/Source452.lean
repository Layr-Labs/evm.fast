import InitECandidate.Proofs.WordStages.Source436
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody452_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody452_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody452_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody452_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody452_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody452_0, 452, 2)) (some 186) ([20, 10]) (some (20, sourceBody452_3, 452, 3))

def sourceBody452_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody452_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_4 sourceBody452_5

def sourceBody452_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_6 sourceBody452_0

def sourceBody452_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_2 sourceBody452_7

def sourceBody452_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_1 sourceBody452_8

def sourceBody452_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody452_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody452_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody452_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody452_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 16) sourceBody452_12 sourceBody452_13

def sourceBody452_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_14 sourceBody452_5

def sourceBody452_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody452_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody452_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody452_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_18 sourceBody452_0

def sourceBody452_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_17 sourceBody452_19

def sourceBody452_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody452_20 sourceBody452_0

def sourceBody452_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_21 sourceBody452_5

def sourceBody452_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_22 sourceBody452_0

def sourceBody452_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_16 sourceBody452_23

def sourceBody452_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_15 sourceBody452_24

def sourceBody452_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_11 sourceBody452_25

def sourceBody452_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_10 sourceBody452_26

def sourceBody452_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 4]))

def sourceBody452_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody452_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody452_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody452_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody452_0, 452, 4)) (some 451) ([10, 16, 12]) (some (10, sourceBody452_31, 452, 5))

def sourceBody452_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_32 sourceBody452_5

def sourceBody452_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_33 sourceBody452_0

def sourceBody452_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_30 sourceBody452_34

def sourceBody452_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_29 sourceBody452_35

def sourceBody452_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_28 sourceBody452_36

def sourceBody452_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_0 sourceBody452_37

def sourceBody452_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_0 sourceBody452_38

def sourceBody452_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_27 sourceBody452_39

def sourceBody452_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_40 sourceBody452_20

def sourceBody452_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_9 sourceBody452_41

def sourceBody452_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_0 sourceBody452_42

def sourceBody452_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_0 sourceBody452_43

def sourceBody452_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_0 sourceBody452_44

def sourceBody452_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody452_0 sourceBody452_45

def source452 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (452, 5, sourceBody452_46)
end InitECandidate.Proofs.WordStages
