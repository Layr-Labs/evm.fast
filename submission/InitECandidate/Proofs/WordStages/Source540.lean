import InitECandidate.Proofs.WordStages.Source524
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody540_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody540_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
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
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody540_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody540_3 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody540_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody540_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody540_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 8) sourceBody540_4 sourceBody540_5

def sourceBody540_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody540_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_6 sourceBody540_7

def sourceBody540_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody540_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 48#64]),
      Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody540_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody540_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody540_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody540_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_13 sourceBody540_0

def sourceBody540_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_12 sourceBody540_14

def sourceBody540_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_11 sourceBody540_15

def sourceBody540_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_10 sourceBody540_16

def sourceBody540_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody540_17 sourceBody540_0

def sourceBody540_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_18 sourceBody540_7

def sourceBody540_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_19 sourceBody540_0

def sourceBody540_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_9 sourceBody540_20

def sourceBody540_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_8 sourceBody540_21

def sourceBody540_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_3 sourceBody540_22

def sourceBody540_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_2 sourceBody540_23

def sourceBody540_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody540_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody540_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_26 sourceBody540_0

def sourceBody540_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_25 sourceBody540_27

def sourceBody540_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_24 sourceBody540_28

def sourceBody540_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_1 sourceBody540_29

def sourceBody540_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody540_0 sourceBody540_30

def source540 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (540, 1, sourceBody540_31)
end InitECandidate.Proofs.WordStages
