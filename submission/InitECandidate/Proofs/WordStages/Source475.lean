import InitECandidate.Proofs.WordStages.Source459
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody475_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody475_1 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody475_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody475_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody475_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody475_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody475_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) sourceBody475_4 sourceBody475_5

def sourceBody475_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody475_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_6 sourceBody475_7

def sourceBody475_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody475_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody475_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody475_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_11 sourceBody475_0

def sourceBody475_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_12 sourceBody475_0

def sourceBody475_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_10 sourceBody475_13

def sourceBody475_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_0 sourceBody475_14

def sourceBody475_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody475_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody475_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_16 sourceBody475_17

def sourceBody475_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_15 sourceBody475_18

def sourceBody475_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody475_19 sourceBody475_0

def sourceBody475_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_20 sourceBody475_7

def sourceBody475_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_21 sourceBody475_0

def sourceBody475_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_9 sourceBody475_22

def sourceBody475_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_8 sourceBody475_23

def sourceBody475_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_3 sourceBody475_24

def sourceBody475_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_2 sourceBody475_25

def sourceBody475_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody475_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody475_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_28 sourceBody475_0

def sourceBody475_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_29 sourceBody475_0

def sourceBody475_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_27 sourceBody475_30

def sourceBody475_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_0 sourceBody475_31

def sourceBody475_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_26 sourceBody475_32

def sourceBody475_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody475_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody475_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def sourceBody475_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_36 sourceBody475_0

def sourceBody475_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_35 sourceBody475_37

def sourceBody475_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_38 sourceBody475_0

def sourceBody475_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_2 sourceBody475_39

def sourceBody475_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_0 sourceBody475_40

def sourceBody475_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_34 sourceBody475_41

def sourceBody475_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_0 sourceBody475_42

def sourceBody475_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_33 sourceBody475_43

def sourceBody475_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
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
              Flapjack.WordLangExpHOL.const 8#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody475_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
                  Flapjack.WordLangExpHOL.const 8#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody475_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
                  Flapjack.WordLangExpHOL.const 8#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody475_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
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
                  Flapjack.WordLangExpHOL.const 8#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody475_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 2, 8, 6]

def sourceBody475_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_49 sourceBody475_0

def sourceBody475_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_48 sourceBody475_50

def sourceBody475_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_47 sourceBody475_51

def sourceBody475_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_46 sourceBody475_52

def sourceBody475_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_45 sourceBody475_53

def sourceBody475_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_44 sourceBody475_54

def sourceBody475_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_1 sourceBody475_55

def sourceBody475_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody475_0 sourceBody475_56

def source475 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (475, 1, sourceBody475_57)
end InitECandidate.Proofs.WordStages
