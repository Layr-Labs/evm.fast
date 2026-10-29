import InitECandidate.Proofs.WordStages.Source454
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody470_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody470_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody470_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody470_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody470_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody470_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody470_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 10) sourceBody470_4 sourceBody470_5

def sourceBody470_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody470_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_6 sourceBody470_7

def sourceBody470_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody470_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody470_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 12)

def sourceBody470_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_11 sourceBody470_0

def sourceBody470_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_12 sourceBody470_0

def sourceBody470_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_10 sourceBody470_13

def sourceBody470_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_0 sourceBody470_14

def sourceBody470_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody470_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody470_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_16 sourceBody470_17

def sourceBody470_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_15 sourceBody470_18

def sourceBody470_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody470_19 sourceBody470_0

def sourceBody470_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_20 sourceBody470_7

def sourceBody470_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_21 sourceBody470_0

def sourceBody470_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_9 sourceBody470_22

def sourceBody470_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_8 sourceBody470_23

def sourceBody470_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_3 sourceBody470_24

def sourceBody470_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_2 sourceBody470_25

def sourceBody470_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody470_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 2])

def sourceBody470_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody470_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 10

def sourceBody470_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_30 sourceBody470_0

def sourceBody470_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_29 sourceBody470_31

def sourceBody470_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_32 sourceBody470_0

def sourceBody470_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_28 sourceBody470_33

def sourceBody470_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_0 sourceBody470_34

def sourceBody470_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_27 sourceBody470_35

def sourceBody470_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_0 sourceBody470_36

def sourceBody470_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_26 sourceBody470_37

def sourceBody470_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody470_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
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
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.var 2])

def sourceBody470_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_40 sourceBody470_33

def sourceBody470_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_0 sourceBody470_41

def sourceBody470_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_39 sourceBody470_42

def sourceBody470_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_0 sourceBody470_43

def sourceBody470_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_38 sourceBody470_44

def sourceBody470_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody470_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody470_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_47 sourceBody470_0

def sourceBody470_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_46 sourceBody470_48

def sourceBody470_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_45 sourceBody470_49

def sourceBody470_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_1 sourceBody470_50

def sourceBody470_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody470_0 sourceBody470_51

def source470 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (470, 2, sourceBody470_52)
end InitECandidate.Proofs.WordStages
