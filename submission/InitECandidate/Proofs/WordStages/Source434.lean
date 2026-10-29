import InitECandidate.Proofs.WordStages.Source418
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody434_0 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody434_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody434_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody434_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody434_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) sourceBody434_2 sourceBody434_3

def sourceBody434_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody434_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_4 sourceBody434_5

def sourceBody434_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody434_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody434_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody434_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody434_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody434_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_11 sourceBody434_8

def sourceBody434_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_10 sourceBody434_12

def sourceBody434_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_13 sourceBody434_8

def sourceBody434_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_2 sourceBody434_14

def sourceBody434_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_8 sourceBody434_15

def sourceBody434_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_9 sourceBody434_16

def sourceBody434_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_8 sourceBody434_17

def sourceBody434_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody434_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody434_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_20 sourceBody434_14

def sourceBody434_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_8 sourceBody434_21

def sourceBody434_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_19 sourceBody434_22

def sourceBody434_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_8 sourceBody434_23

def sourceBody434_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_18 sourceBody434_24

def sourceBody434_26 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody434_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody434_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody434_2 sourceBody434_3

def sourceBody434_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_28 sourceBody434_5

def sourceBody434_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody434_24 sourceBody434_8

def sourceBody434_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_30 sourceBody434_5

def sourceBody434_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_31 sourceBody434_8

def sourceBody434_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_7 sourceBody434_32

def sourceBody434_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_29 sourceBody434_33

def sourceBody434_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_27 sourceBody434_34

def sourceBody434_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_26 sourceBody434_35

def sourceBody434_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody434_25 sourceBody434_36

def sourceBody434_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_37 sourceBody434_5

def sourceBody434_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_38 sourceBody434_8

def sourceBody434_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_7 sourceBody434_39

def sourceBody434_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_6 sourceBody434_40

def sourceBody434_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_1 sourceBody434_41

def sourceBody434_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_0 sourceBody434_42

def sourceBody434_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody434_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody434_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_45 sourceBody434_8

def sourceBody434_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_44 sourceBody434_46

def sourceBody434_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody434_43 sourceBody434_47

def source434 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (434, 2, sourceBody434_48)
end InitECandidate.Proofs.WordStages
