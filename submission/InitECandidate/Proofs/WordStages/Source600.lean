import InitECandidate.Proofs.WordStages.Source584
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody600_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody600_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody600_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody600_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody600_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) sourceBody600_2 sourceBody600_3

def sourceBody600_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody600_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_4 sourceBody600_5

def sourceBody600_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody600_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody600_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 288#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody600_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody600_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody600_8, 600, 2)) (some 391) ([8]) (some (8, sourceBody600_10, 600, 3))

def sourceBody600_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_11 sourceBody600_5

def sourceBody600_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_12 sourceBody600_8

def sourceBody600_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_9 sourceBody600_13

def sourceBody600_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_8 sourceBody600_14

def sourceBody600_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_8 sourceBody600_15

def sourceBody600_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody600_16 sourceBody600_8

def sourceBody600_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_17 sourceBody600_5

def sourceBody600_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_18 sourceBody600_8

def sourceBody600_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_7 sourceBody600_19

def sourceBody600_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_6 sourceBody600_20

def sourceBody600_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_1 sourceBody600_21

def sourceBody600_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_0 sourceBody600_22

def sourceBody600_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody600_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody600_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_25 sourceBody600_8

def sourceBody600_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_24 sourceBody600_26

def sourceBody600_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody600_23 sourceBody600_27

def source600 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (600, 1, sourceBody600_28)
end InitECandidate.Proofs.WordStages
