import InitECandidate.Proofs.WordStages.Source383
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody399_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody399_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody399_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody399_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody399_0, 399, 2)) (some 398) ([12]) (some (12, sourceBody399_2, 399, 3))

def sourceBody399_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody399_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_3 sourceBody399_4

def sourceBody399_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_5 sourceBody399_0

def sourceBody399_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_1 sourceBody399_6

def sourceBody399_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody399_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody399_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody399_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody399_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody399_10 sourceBody399_11

def sourceBody399_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_12 sourceBody399_4

def sourceBody399_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody399_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody399_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody399_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_16 sourceBody399_0

def sourceBody399_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_15 sourceBody399_17

def sourceBody399_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody399_18 sourceBody399_0

def sourceBody399_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_19 sourceBody399_4

def sourceBody399_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_20 sourceBody399_0

def sourceBody399_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_14 sourceBody399_21

def sourceBody399_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_13 sourceBody399_22

def sourceBody399_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_9 sourceBody399_23

def sourceBody399_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_8 sourceBody399_24

def sourceBody399_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody399_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_26 sourceBody399_17

def sourceBody399_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_25 sourceBody399_27

def sourceBody399_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_7 sourceBody399_28

def sourceBody399_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_0 sourceBody399_29

def sourceBody399_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody399_0 sourceBody399_30

def source399 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (399, 2, sourceBody399_31)
end InitECandidate.Proofs.WordStages
