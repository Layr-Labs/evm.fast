import InitECandidate.Proofs.WordStages.Source456
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody472_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody472_1 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody472_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody472_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody472_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody472_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody472_0, 472, 2)) (some 92) ([4, 10]) (some (4, sourceBody472_4, 472, 3))

def sourceBody472_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody472_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_5 sourceBody472_6

def sourceBody472_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_7 sourceBody472_0

def sourceBody472_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_3 sourceBody472_8

def sourceBody472_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_2 sourceBody472_9

def sourceBody472_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody472_12 : WordLangProgHOL (BitVec 64) :=
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
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.var 12])

def sourceBody472_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody472_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 8

def sourceBody472_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_14 sourceBody472_0

def sourceBody472_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_13 sourceBody472_15

def sourceBody472_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_16 sourceBody472_0

def sourceBody472_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_12 sourceBody472_17

def sourceBody472_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_18

def sourceBody472_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_11 sourceBody472_19

def sourceBody472_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_20

def sourceBody472_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody472_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 12])

def sourceBody472_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_23 sourceBody472_17

def sourceBody472_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_24

def sourceBody472_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_22 sourceBody472_25

def sourceBody472_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_26

def sourceBody472_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_21 sourceBody472_27

def sourceBody472_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody472_30 : WordLangProgHOL (BitVec 64) :=
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
            Flapjack.WordLangExpHOL.const 72#64]),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12]])

def sourceBody472_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_30 sourceBody472_17

def sourceBody472_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_31

def sourceBody472_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_29 sourceBody472_32

def sourceBody472_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_33

def sourceBody472_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_28 sourceBody472_34

def sourceBody472_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody472_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody472_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_37 sourceBody472_0

def sourceBody472_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_36 sourceBody472_38

def sourceBody472_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_35 sourceBody472_39

def sourceBody472_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_10 sourceBody472_40

def sourceBody472_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_41

def sourceBody472_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_42

def sourceBody472_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_1 sourceBody472_43

def sourceBody472_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody472_0 sourceBody472_44

def source472 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (472, 2, sourceBody472_45)
end InitECandidate.Proofs.WordStages
