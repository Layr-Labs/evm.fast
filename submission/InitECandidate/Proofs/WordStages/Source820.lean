import InitECandidate.Proofs.WordStages.Source804
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody820_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody820_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody820_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody820_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody820_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody820_2 sourceBody820_3

def sourceBody820_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody820_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_4 sourceBody820_5

def sourceBody820_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody820_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 524#64)

def sourceBody820_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody820_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody820_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_9 sourceBody820_10

def sourceBody820_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_8 sourceBody820_11

def sourceBody820_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody820_12 sourceBody820_10

def sourceBody820_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_13 sourceBody820_5

def sourceBody820_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_14 sourceBody820_10

def sourceBody820_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_7 sourceBody820_15

def sourceBody820_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_6 sourceBody820_16

def sourceBody820_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_1 sourceBody820_17

def sourceBody820_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_0 sourceBody820_18

def sourceBody820_20 : WordLangProgHOL (BitVec 64) :=
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
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.const 128#64, Flapjack.WordLangExpHOL.var 2],
              Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody820_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_20 sourceBody820_11

def sourceBody820_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody820_19 sourceBody820_21

def source820 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (820, 2, sourceBody820_22)
end InitECandidate.Proofs.WordStages
