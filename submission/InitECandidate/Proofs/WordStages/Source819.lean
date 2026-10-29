import InitECandidate.Proofs.WordStages.Source803
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody819_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody819_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody819_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody819_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody819_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody819_2 sourceBody819_3

def sourceBody819_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody819_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_4 sourceBody819_5

def sourceBody819_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody819_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 519#64)

def sourceBody819_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody819_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody819_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_9 sourceBody819_10

def sourceBody819_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_8 sourceBody819_11

def sourceBody819_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody819_12 sourceBody819_10

def sourceBody819_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_13 sourceBody819_5

def sourceBody819_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_14 sourceBody819_10

def sourceBody819_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_7 sourceBody819_15

def sourceBody819_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_6 sourceBody819_16

def sourceBody819_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_1 sourceBody819_17

def sourceBody819_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_0 sourceBody819_18

def sourceBody819_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 400#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody819_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_20 sourceBody819_11

def sourceBody819_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody819_19 sourceBody819_21

def source819 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (819, 2, sourceBody819_22)
end InitECandidate.Proofs.WordStages
