import InitECandidate.Proofs.WordStages.Source453
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody469_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
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
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody469_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody469_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody469_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody469_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody469_2 sourceBody469_3

def sourceBody469_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody469_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_4 sourceBody469_5

def sourceBody469_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody469_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody469_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody469_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody469_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_10 sourceBody469_8

def sourceBody469_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_11 sourceBody469_8

def sourceBody469_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_9 sourceBody469_12

def sourceBody469_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_8 sourceBody469_13

def sourceBody469_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody469_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody469_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_15 sourceBody469_16

def sourceBody469_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_14 sourceBody469_17

def sourceBody469_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody469_18 sourceBody469_8

def sourceBody469_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_19 sourceBody469_5

def sourceBody469_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_20 sourceBody469_8

def sourceBody469_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_7 sourceBody469_21

def sourceBody469_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_6 sourceBody469_22

def sourceBody469_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_1 sourceBody469_23

def sourceBody469_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_0 sourceBody469_24

def sourceBody469_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody469_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody469_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_27 sourceBody469_8

def sourceBody469_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_26 sourceBody469_28

def sourceBody469_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody469_25 sourceBody469_29

def source469 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (469, 2, sourceBody469_30)
end InitECandidate.Proofs.WordStages
