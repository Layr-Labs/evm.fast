import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source796
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word796_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1712#64]))

def word796_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1712#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word796_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_0 word796_0_1

def word796_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1712#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word796_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_2 word796_0_3

def word796_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 204
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1712#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word796_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_4 word796_0_5

def word796_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1712#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word796_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_6 word796_0_7

def word796_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1712#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word796_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_8 word796_0_9

def word796_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1760#64]))

def word796_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_10 word796_0_11

def word796_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 234
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1760#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word796_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_12 word796_0_13

def word796_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1760#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word796_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_14 word796_0_15

def word796_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1760#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word796_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_16 word796_0_17

def word796_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1760#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word796_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_18 word796_0_19

def word796_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 196
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1760#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word796_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_20 word796_0_21

def word796_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1808#64]))

def word796_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_22 word796_0_23

def word796_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1808#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word796_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_24 word796_0_25

def word796_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1808#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word796_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_26 word796_0_27

def word796_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 226
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1808#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word796_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_28 word796_0_29

def word796_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1808#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word796_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_30 word796_0_31

def word796_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1808#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word796_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_32 word796_0_33

def word796_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def word796_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_34 word796_0_35

def word796_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 6)

def word796_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_36 word796_0_37

def word796_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 8)

def word796_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_38 word796_0_39

def word796_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 10)

def word796_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_40 word796_0_41

def word796_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 12)

def word796_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_42 word796_0_43

def word796_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 14)

def word796_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_44 word796_0_45

def word796_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word796_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word796_0_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([96, 212, 68, 184, 126, 242]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 2)) (some 715) ([18, 134, 76, 192, 48, 164]) (some (18, word796_0_48, 796, 3))

def word796_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_46 word796_0_49

def word796_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word796_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_50 word796_0_51

def word796_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 52)

def word796_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_52 word796_0_53

def word796_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 222 (Flapjack.WordLangExpHOL.var 168)

def word796_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_54 word796_0_55

def word796_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 110)

def word796_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_56 word796_0_57

def word796_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 226)

def word796_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_58 word796_0_59

def word796_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 38)

def word796_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_60 word796_0_61

def word796_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 154)

def word796_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_62 word796_0_63

def word796_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 96)

def word796_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_64 word796_0_65

def word796_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 212)

def word796_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_66 word796_0_67

def word796_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 68)

def word796_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_68 word796_0_69

def word796_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 238 (Flapjack.WordLangExpHOL.var 184)

def word796_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_70 word796_0_71

def word796_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 126)

def word796_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_72 word796_0_73

def word796_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 242)

def word796_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_74 word796_0_75

def word796_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word796_0_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 134, 76, 192, 48, 164]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 4)) (some 714) ([106, 222, 34, 150, 92, 208, 64, 180, 122, 238, 26, 142]) (some (106, word796_0_77, 796, 5))

def word796_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_76 word796_0_78

def word796_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_79 word796_0_51

def word796_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 18)

def word796_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_80 word796_0_81

def word796_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 134)

def word796_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_82 word796_0_83

def word796_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 76)

def word796_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_84 word796_0_85

def word796_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 238 (Flapjack.WordLangExpHOL.var 192)

def word796_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_86 word796_0_87

def word796_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 48)

def word796_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_88 word796_0_89

def word796_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 164)

def word796_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_90 word796_0_91

def word796_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word796_0_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([106, 222, 34, 150, 92, 208]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 6)) (some 715) ([64, 180, 122, 238, 26, 142]) (some (64, word796_0_93, 796, 7))

def word796_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_92 word796_0_94

def word796_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_95 word796_0_51

def word796_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_96 word796_0_81

def word796_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_97 word796_0_83

def word796_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_98 word796_0_85

def word796_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_99 word796_0_87

def word796_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_100 word796_0_89

def word796_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_101 word796_0_91

def word796_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 106)

def word796_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_102 word796_0_103

def word796_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 222)

def word796_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_104 word796_0_105

def word796_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 34)

def word796_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_106 word796_0_107

def word796_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 150)

def word796_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_108 word796_0_109

def word796_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 92)

def word796_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_110 word796_0_111

def word796_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 230 (Flapjack.WordLangExpHOL.var 208)

def word796_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_112 word796_0_113

def word796_0_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([106, 222, 34, 150, 92, 208]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 8)) (some 710) ([64, 180, 122, 238, 26, 142, 84, 200, 56, 172, 114, 230]) (some (64, word796_0_93, 796, 9))

def word796_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_114 word796_0_115

def word796_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_116 word796_0_51

def word796_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 30)

def word796_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_117 word796_0_118

def word796_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 146)

def word796_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_119 word796_0_120

def word796_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 88)

def word796_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_121 word796_0_122

def word796_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 204)

def word796_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_123 word796_0_124

def word796_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 60)

def word796_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_125 word796_0_126

def word796_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 230 (Flapjack.WordLangExpHOL.var 176)

def word796_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_127 word796_0_128

def word796_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 106)

def word796_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_129 word796_0_130

def word796_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 222)

def word796_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_131 word796_0_132

def word796_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 34)

def word796_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_133 word796_0_134

def word796_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 216 (Flapjack.WordLangExpHOL.var 150)

def word796_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_135 word796_0_136

def word796_0_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 92)

def word796_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_137 word796_0_138

def word796_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 208)

def word796_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_139 word796_0_140

def word796_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def word796_0_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([64, 180, 122, 238, 26, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 10)) (some 714) ([84, 200, 56, 172, 114, 230, 42, 158, 100, 216, 72, 188]) (some (84, word796_0_142, 796, 11))

def word796_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_141 word796_0_143

def word796_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_144 word796_0_51

def word796_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 64)

def word796_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_145 word796_0_146

def word796_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 180)

def word796_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_147 word796_0_148

def word796_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 122)

def word796_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_149 word796_0_150

def word796_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 238)

def word796_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_151 word796_0_152

def word796_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 26)

def word796_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_153 word796_0_154

def word796_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 230 (Flapjack.WordLangExpHOL.var 142)

def word796_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_155 word796_0_156

def word796_0_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([64, 180, 122, 238, 26, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 12)) (some 712) ([84, 200, 56, 172, 114, 230]) (some (84, word796_0_142, 796, 13))

def word796_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_157 word796_0_158

def word796_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_159 word796_0_51

def word796_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 8505329371266088957#64)

def word796_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_160 word796_0_161

def word796_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.const 17002214543764226050#64)

def word796_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_162 word796_0_163

def word796_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 6865905132761471162#64)

def word796_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_164 word796_0_165

def word796_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.const 8632934651105793861#64)

def word796_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_166 word796_0_167

def word796_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 6631298214892334189#64)

def word796_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_168 word796_0_169

def word796_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 230 (Flapjack.WordLangExpHOL.const 1582556514881692819#64)

def word796_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_170 word796_0_171

def word796_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_172 word796_0_130

def word796_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_173 word796_0_132

def word796_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_174 word796_0_134

def word796_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_175 word796_0_136

def word796_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_176 word796_0_138

def word796_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_177 word796_0_140

def word796_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 8505329371266088957#64)

def word796_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_178 word796_0_179

def word796_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 246 (Flapjack.WordLangExpHOL.const 17002214543764226050#64)

def word796_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_180 word796_0_181

def word796_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 6865905132761471162#64)

def word796_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_182 word796_0_183

def word796_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.const 8632934651105793861#64)

def word796_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_184 word796_0_185

def word796_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 6631298214892334189#64)

def word796_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_186 word796_0_187

def word796_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.const 1582556514881692819#64)

def word796_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_188 word796_0_189

def word796_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_190 word796_0_189

def word796_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_191 word796_0_187

def word796_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_192 word796_0_185

def word796_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_193 word796_0_183

def word796_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_194 word796_0_181

def word796_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_195 word796_0_179

def word796_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word796_0_198 : WordLangProgHOL (BitVec 64) :=
.call (some (([106, 222, 34, 150, 92, 208]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 14)) (some 710) ([42, 158, 100, 216, 72, 188, 130, 246, 16, 132, 74, 190]) (some (42, word796_0_197, 796, 15))

def word796_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_196 word796_0_198

def word796_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_199 word796_0_51

def word796_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 118)

def word796_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_200 word796_0_201

def word796_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 246 (Flapjack.WordLangExpHOL.var 234)

def word796_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_202 word796_0_203

def word796_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def word796_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_204 word796_0_205

def word796_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 138)

def word796_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_206 word796_0_207

def word796_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 80)

def word796_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_208 word796_0_209

def word796_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 196)

def word796_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_210 word796_0_211

def word796_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 106)

def word796_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_212 word796_0_213

def word796_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 222)

def word796_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_214 word796_0_215

def word796_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 34)

def word796_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_216 word796_0_217

def word796_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 150)

def word796_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_218 word796_0_219

def word796_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 92)

def word796_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_220 word796_0_221

def word796_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 208)

def word796_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_222 word796_0_223

def word796_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 130

def word796_0_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 158, 100, 216, 72, 188]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 16)) (some 714) ([130, 246, 16, 132, 74, 190, 46, 162, 104, 220, 32, 148]) (some (130, word796_0_225, 796, 17))

def word796_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_224 word796_0_226

def word796_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_227 word796_0_51

def word796_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 246 (Flapjack.WordLangExpHOL.var 64)

def word796_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_228 word796_0_229

def word796_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 180)

def word796_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_230 word796_0_231

def word796_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 122)

def word796_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_232 word796_0_233

def word796_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 238)

def word796_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_234 word796_0_235

def word796_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 26)

def word796_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_236 word796_0_237

def word796_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 142)

def word796_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_238 word796_0_239

def word796_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 246

def word796_0_242 : WordLangProgHOL (BitVec 64) :=
.call (some (([130]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 18)) (some 705) ([246, 16, 132, 74, 190, 46]) (some (246, word796_0_241, 796, 19))

def word796_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_240 word796_0_242

def word796_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_243 word796_0_51

def word796_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 130)

def word796_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_244 word796_0_245

def word796_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.const 1#64)

def word796_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_246 word796_0_247

def word796_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def word796_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_249 word796_0_51

def word796_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def word796_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_250 word796_0_251

def word796_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 246 (Flapjack.WordLangExpHOL.var 52)

def word796_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_252 word796_0_253

def word796_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 168)

def word796_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_254 word796_0_255

def word796_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 110)

def word796_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_256 word796_0_257

def word796_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 226)

def word796_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_258 word796_0_259

def word796_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 38)

def word796_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_260 word796_0_261

def word796_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 154)

def word796_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_262 word796_0_263

def word796_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 30)

def word796_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_264 word796_0_265

def word796_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 146)

def word796_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_266 word796_0_267

def word796_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 88)

def word796_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_268 word796_0_269

def word796_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 204)

def word796_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_270 word796_0_271

def word796_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 60)

def word796_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_272 word796_0_273

def word796_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 176)

def word796_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_274 word796_0_275

def word796_0_277 : WordLangProgHOL (BitVec 64) :=
.call (some (([64, 180, 122, 238, 26, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 20)) (some 714) ([246, 16, 132, 74, 190, 46, 162, 104, 220, 32, 148, 90]) (some (246, word796_0_241, 796, 21))

def word796_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_276 word796_0_277

def word796_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_278 word796_0_51

def word796_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def word796_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_280 word796_0_51

def word796_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word796_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_281 word796_0_282

def word796_0_284 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 132) word796_0_279 word796_0_283

def word796_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_248 word796_0_284

def word796_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_285 word796_0_51

def word796_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 64)

def word796_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_286 word796_0_287

def word796_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 180)

def word796_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_288 word796_0_289

def word796_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 122)

def word796_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_290 word796_0_291

def word796_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 238)

def word796_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_292 word796_0_293

def word796_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 26)

def word796_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_294 word796_0_295

def word796_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 142)

def word796_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_296 word796_0_297

def word796_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 162

def word796_0_300 : WordLangProgHOL (BitVec 64) :=
.call (some (([246, 16, 132, 74, 190, 46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 22)) (some 715) ([162, 104, 220, 32, 148, 90]) (some (162, word796_0_299, 796, 23))

def word796_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_298 word796_0_300

def word796_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_301 word796_0_51

def word796_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 246)

def word796_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_302 word796_0_303

def word796_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 16)

def word796_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_304 word796_0_305

def word796_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 132)

def word796_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_306 word796_0_307

def word796_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 74)

def word796_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_308 word796_0_309

def word796_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 190)

def word796_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_310 word796_0_311

def word796_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 46)

def word796_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_312 word796_0_313

def word796_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 64)

def word796_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_314 word796_0_315

def word796_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 180)

def word796_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_316 word796_0_317

def word796_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.var 122)

def word796_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_318 word796_0_319

def word796_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 238)

def word796_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_320 word796_0_321

def word796_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 26)

def word796_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_322 word796_0_323

def word796_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 142)

def word796_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_324 word796_0_325

def word796_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 206

def word796_0_328 : WordLangProgHOL (BitVec 64) :=
.call (some (([162, 104, 220, 32, 148, 90]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 24)) (some 714) ([206, 62, 178, 120, 236, 24, 140, 82, 198, 54, 170, 112]) (some (206, word796_0_327, 796, 25))

def word796_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_326 word796_0_328

def word796_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_329 word796_0_51

def word796_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 42)

def word796_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_330 word796_0_331

def word796_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 158)

def word796_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_332 word796_0_333

def word796_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.var 100)

def word796_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_334 word796_0_335

def word796_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 216)

def word796_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_336 word796_0_337

def word796_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 72)

def word796_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_338 word796_0_339

def word796_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 188)

def word796_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_340 word796_0_341

def word796_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 140

def word796_0_344 : WordLangProgHOL (BitVec 64) :=
.call (some (([206, 62, 178, 120, 236, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 26)) (some 715) ([140, 82, 198, 54, 170, 112]) (some (140, word796_0_343, 796, 27))

def word796_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_342 word796_0_344

def word796_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_345 word796_0_51

def word796_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 206)

def word796_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_346 word796_0_347

def word796_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 62)

def word796_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_348 word796_0_349

def word796_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.var 178)

def word796_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_350 word796_0_351

def word796_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 120)

def word796_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_352 word796_0_353

def word796_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 236)

def word796_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_354 word796_0_355

def word796_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 24)

def word796_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_356 word796_0_357

def word796_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 228 (Flapjack.WordLangExpHOL.var 42)

def word796_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_358 word796_0_359

def word796_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 158)

def word796_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_360 word796_0_361

def word796_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 100)

def word796_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_362 word796_0_363

def word796_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 216)

def word796_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_364 word796_0_365

def word796_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 72)

def word796_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_366 word796_0_367

def word796_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 188)

def word796_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_368 word796_0_369

def word796_0_371 : WordLangProgHOL (BitVec 64) :=
.call (some (([206, 62, 178, 120, 236, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 28)) (some 714) ([140, 82, 198, 54, 170, 112, 228, 40, 156, 98, 214, 70]) (some (140, word796_0_343, 796, 29))

def word796_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_370 word796_0_371

def word796_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_372 word796_0_51

def word796_0_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 228 (Flapjack.WordLangExpHOL.var 30)

def word796_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_373 word796_0_374

def word796_0_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 146)

def word796_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_375 word796_0_376

def word796_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 88)

def word796_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_377 word796_0_378

def word796_0_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 204)

def word796_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_379 word796_0_380

def word796_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 60)

def word796_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_381 word796_0_382

def word796_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 176)

def word796_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_383 word796_0_384

def word796_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 42)

def word796_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_385 word796_0_386

def word796_0_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 158)

def word796_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_387 word796_0_388

def word796_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 100)

def word796_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_389 word796_0_390

def word796_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 216)

def word796_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_391 word796_0_392

def word796_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 72)

def word796_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_393 word796_0_394

def word796_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 188)

def word796_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_395 word796_0_396

def word796_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 228

def word796_0_399 : WordLangProgHOL (BitVec 64) :=
.call (some (([140, 82, 198, 54, 170, 112]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 30)) (some 714) ([228, 40, 156, 98, 214, 70, 186, 128, 244, 20, 136, 78]) (some (228, word796_0_398, 796, 31))

def word796_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_397 word796_0_399

def word796_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_400 word796_0_51

def word796_0_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 228 (Flapjack.WordLangExpHOL.var 140)

def word796_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_401 word796_0_402

def word796_0_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 82)

def word796_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_403 word796_0_404

def word796_0_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 198)

def word796_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_405 word796_0_406

def word796_0_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 54)

def word796_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_407 word796_0_408

def word796_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 170)

def word796_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_409 word796_0_410

def word796_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 112)

def word796_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_411 word796_0_412

def word796_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 246)

def word796_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_413 word796_0_414

def word796_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 16)

def word796_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_415 word796_0_416

def word796_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 132)

def word796_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_417 word796_0_418

def word796_0_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 74)

def word796_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_419 word796_0_420

def word796_0_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 190)

def word796_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_421 word796_0_422

def word796_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 46)

def word796_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_423 word796_0_424

def word796_0_426 : WordLangProgHOL (BitVec 64) :=
.call (some (([140, 82, 198, 54, 170, 112]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 32)) (some 714) ([228, 40, 156, 98, 214, 70, 186, 128, 244, 20, 136, 78]) (some (228, word796_0_398, 796, 33))

def word796_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_425 word796_0_426

def word796_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_427 word796_0_51

def word796_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 228 (Flapjack.WordLangExpHOL.var 206)

def word796_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_428 word796_0_429

def word796_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 62)

def word796_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_430 word796_0_431

def word796_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 178)

def word796_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_432 word796_0_433

def word796_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 120)

def word796_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_434 word796_0_435

def word796_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 236)

def word796_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_436 word796_0_437

def word796_0_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 24)

def word796_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_438 word796_0_439

def word796_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 140)

def word796_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_440 word796_0_441

def word796_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 82)

def word796_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_442 word796_0_443

def word796_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 198)

def word796_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_444 word796_0_445

def word796_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 54)

def word796_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_446 word796_0_447

def word796_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 170)

def word796_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_448 word796_0_449

def word796_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 112)

def word796_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_450 word796_0_451

def word796_0_453 : WordLangProgHOL (BitVec 64) :=
.call (some (([206, 62, 178, 120, 236, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 34)) (some 710) ([228, 40, 156, 98, 214, 70, 186, 128, 244, 20, 136, 78]) (some (228, word796_0_398, 796, 35))

def word796_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_452 word796_0_453

def word796_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_454 word796_0_51

def word796_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 228 (Flapjack.WordLangExpHOL.var 118)

def word796_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_455 word796_0_456

def word796_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 234)

def word796_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_457 word796_0_458

def word796_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 22)

def word796_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_459 word796_0_460

def word796_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 138)

def word796_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_461 word796_0_462

def word796_0_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 80)

def word796_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_463 word796_0_464

def word796_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 196)

def word796_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_465 word796_0_466

def word796_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 162)

def word796_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_467 word796_0_468

def word796_0_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 104)

def word796_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_469 word796_0_470

def word796_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 220)

def word796_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_471 word796_0_472

def word796_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def word796_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_473 word796_0_474

def word796_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 148)

def word796_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_475 word796_0_476

def word796_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 90)

def word796_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_477 word796_0_478

def word796_0_480 : WordLangProgHOL (BitVec 64) :=
.call (some (([140, 82, 198, 54, 170, 112]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 36)) (some 714) ([228, 40, 156, 98, 214, 70, 186, 128, 244, 20, 136, 78]) (some (228, word796_0_398, 796, 37))

def word796_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_479 word796_0_480

def word796_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_481 word796_0_51

def word796_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_482 word796_0_429

def word796_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_483 word796_0_431

def word796_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_484 word796_0_433

def word796_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_485 word796_0_435

def word796_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_486 word796_0_437

def word796_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_487 word796_0_439

def word796_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_488 word796_0_441

def word796_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_489 word796_0_443

def word796_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_490 word796_0_445

def word796_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_491 word796_0_447

def word796_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_492 word796_0_449

def word796_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_493 word796_0_451

def word796_0_495 : WordLangProgHOL (BitVec 64) :=
.call (some (([206, 62, 178, 120, 236, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 38)) (some 710) ([228, 40, 156, 98, 214, 70, 186, 128, 244, 20, 136, 78]) (some (228, word796_0_398, 796, 39))

def word796_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_494 word796_0_495

def word796_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_496 word796_0_51

def word796_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 206)

def word796_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_497 word796_0_498

def word796_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 62)

def word796_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_499 word796_0_500

def word796_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 178)

def word796_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_501 word796_0_502

def word796_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 120)

def word796_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_503 word796_0_504

def word796_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 236)

def word796_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_505 word796_0_506

def word796_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 194 (Flapjack.WordLangExpHOL.var 24)

def word796_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_507 word796_0_508

def word796_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 162)

def word796_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_509 word796_0_510

def word796_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 104)

def word796_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_511 word796_0_512

def word796_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 220)

def word796_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_513 word796_0_514

def word796_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 32)

def word796_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_515 word796_0_516

def word796_0_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 148)

def word796_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_517 word796_0_518

def word796_0_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 90)

def word796_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_519 word796_0_520

def word796_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word796_0_523 : WordLangProgHOL (BitVec 64) :=
.call (some (([228, 40, 156, 98, 214, 70, 186]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 40)) (some 795) ([128, 244, 20, 136, 78, 194, 50, 166, 108, 224, 36, 152]) (some (128, word796_0_522, 796, 41))

def word796_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_521 word796_0_523

def word796_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_524 word796_0_51

def word796_0_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 40)

def word796_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_525 word796_0_526

def word796_0_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 156)

def word796_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_527 word796_0_528

def word796_0_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 98)

def word796_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_529 word796_0_530

def word796_0_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 214)

def word796_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_531 word796_0_532

def word796_0_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 70)

def word796_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_533 word796_0_534

def word796_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 194 (Flapjack.WordLangExpHOL.var 186)

def word796_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_535 word796_0_536

def word796_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 228)

def word796_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_537 word796_0_538

def word796_0_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 0#64)

def word796_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_539 word796_0_540

def word796_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.const 1#64)

def word796_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_542 word796_0_51

def word796_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.const 1#64)

def word796_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_543 word796_0_544

def word796_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 96)

def word796_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_545 word796_0_546

def word796_0_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 212)

def word796_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_547 word796_0_548

def word796_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 68)

def word796_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_549 word796_0_550

def word796_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 184)

def word796_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_551 word796_0_552

def word796_0_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 126)

def word796_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_553 word796_0_554

def word796_0_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240 (Flapjack.WordLangExpHOL.var 242)

def word796_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_555 word796_0_556

def word796_0_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def word796_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_557 word796_0_558

def word796_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 6)

def word796_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_559 word796_0_560

def word796_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 8)

def word796_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_561 word796_0_562

def word796_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 10)

def word796_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_563 word796_0_564

def word796_0_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 12)

def word796_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_565 word796_0_566

def word796_0_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 14)

def word796_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_567 word796_0_568

def word796_0_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word796_0_571 : WordLangProgHOL (BitVec 64) :=
.call (some (([50, 166, 108, 224, 36, 152]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 42)) (some 714) ([94, 210, 66, 182, 124, 240, 28, 144, 86, 202, 58, 174]) (some (94, word796_0_570, 796, 43))

def word796_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_569 word796_0_571

def word796_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_572 word796_0_51

def word796_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 128)

def word796_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_573 word796_0_574

def word796_0_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 244)

def word796_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_575 word796_0_576

def word796_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 20)

def word796_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_577 word796_0_578

def word796_0_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 136)

def word796_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_579 word796_0_580

def word796_0_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 78)

def word796_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_581 word796_0_582

def word796_0_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240 (Flapjack.WordLangExpHOL.var 194)

def word796_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_583 word796_0_584

def word796_0_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 50)

def word796_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_585 word796_0_586

def word796_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 166)

def word796_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_587 word796_0_588

def word796_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 108)

def word796_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_589 word796_0_590

def word796_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 224)

def word796_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_591 word796_0_592

def word796_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def word796_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_593 word796_0_594

def word796_0_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 152)

def word796_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_595 word796_0_596

def word796_0_598 : WordLangProgHOL (BitVec 64) :=
.call (some (([128, 244, 20, 136, 78, 194]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 44)) (some 714) ([94, 210, 66, 182, 124, 240, 28, 144, 86, 202, 58, 174]) (some (94, word796_0_570, 796, 45))

def word796_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_597 word796_0_598

def word796_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_599 word796_0_51

def word796_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1856#64]))

def word796_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_600 word796_0_601

def word796_0_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1856#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word796_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_602 word796_0_603

def word796_0_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1856#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word796_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_604 word796_0_605

def word796_0_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1856#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word796_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_606 word796_0_607

def word796_0_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1856#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word796_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_608 word796_0_609

def word796_0_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1856#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word796_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_610 word796_0_611

def word796_0_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 128)

def word796_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_612 word796_0_613

def word796_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 244)

def word796_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_614 word796_0_615

def word796_0_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 20)

def word796_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_616 word796_0_617

def word796_0_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 136)

def word796_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_618 word796_0_619

def word796_0_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 78)

def word796_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_620 word796_0_621

def word796_0_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 194)

def word796_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_622 word796_0_623

def word796_0_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 94)

def word796_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_624 word796_0_625

def word796_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.var 210)

def word796_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_626 word796_0_627

def word796_0_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 66)

def word796_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_628 word796_0_629

def word796_0_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 182)

def word796_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_630 word796_0_631

def word796_0_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 124)

def word796_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_632 word796_0_633

def word796_0_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 218 (Flapjack.WordLangExpHOL.var 240)

def word796_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_634 word796_0_635

def word796_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word796_0_638 : WordLangProgHOL (BitVec 64) :=
.call (some (([128, 244, 20, 136, 78, 194]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 46)) (some 714) ([28, 144, 86, 202, 58, 174, 116, 232, 44, 160, 102, 218]) (some (28, word796_0_637, 796, 47))

def word796_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_636 word796_0_638

def word796_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_639 word796_0_51

def word796_0_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 42)

def word796_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_640 word796_0_641

def word796_0_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 158)

def word796_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_642 word796_0_643

def word796_0_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 100)

def word796_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_644 word796_0_645

def word796_0_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 216)

def word796_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_646 word796_0_647

def word796_0_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 72)

def word796_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_648 word796_0_649

def word796_0_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 188)

def word796_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_650 word796_0_651

def word796_0_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 18)

def word796_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_652 word796_0_653

def word796_0_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.var 134)

def word796_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_654 word796_0_655

def word796_0_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 76)

def word796_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_656 word796_0_657

def word796_0_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 192)

def word796_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_658 word796_0_659

def word796_0_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 48)

def word796_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_660 word796_0_661

def word796_0_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 218 (Flapjack.WordLangExpHOL.var 164)

def word796_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_662 word796_0_663

def word796_0_665 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 158, 100, 216, 72, 188]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 48)) (some 714) ([28, 144, 86, 202, 58, 174, 116, 232, 44, 160, 102, 218]) (some (28, word796_0_637, 796, 49))

def word796_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_664 word796_0_665

def word796_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_666 word796_0_51

def word796_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.const 0#64)

def word796_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_668 word796_0_51

def word796_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.const 0#64)

def word796_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_669 word796_0_670

def word796_0_672 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 166 (Flapjack.WordRegImm.reg 108) word796_0_667 word796_0_671

def word796_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_541 word796_0_672

def word796_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_673 word796_0_51

def word796_0_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 4)

def word796_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_674 word796_0_675

def word796_0_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 6)

def word796_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_676 word796_0_677

def word796_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 8)

def word796_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_678 word796_0_679

def word796_0_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def word796_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_680 word796_0_681

def word796_0_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 12)

def word796_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_682 word796_0_683

def word796_0_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 14)

def word796_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_684 word796_0_685

def word796_0_687 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 166

def word796_0_688 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 50)) (some 723) ([166, 108, 224, 36, 152, 94]) (some (166, word796_0_687, 796, 51))

def word796_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_686 word796_0_688

def word796_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_689 word796_0_51

def word796_0_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 128)

def word796_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_690 word796_0_691

def word796_0_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 244)

def word796_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_692 word796_0_693

def word796_0_695 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def word796_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_694 word796_0_695

def word796_0_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 136)

def word796_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_696 word796_0_697

def word796_0_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 78)

def word796_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_698 word796_0_699

def word796_0_701 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 194)

def word796_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_700 word796_0_701

def word796_0_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 108

def word796_0_704 : WordLangProgHOL (BitVec 64) :=
.call (some (([166]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 52)) (some 723) ([108, 224, 36, 152, 94, 210]) (some (108, word796_0_703, 796, 53))

def word796_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_702 word796_0_704

def word796_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_705 word796_0_51

def word796_0_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 50)

def word796_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_706 word796_0_707

def word796_0_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 166)

def word796_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_708 word796_0_709

def word796_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_544 word796_0_51

def word796_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.const 1#64)

def word796_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_711 word796_0_712

def word796_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_713 word796_0_691

def word796_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_714 word796_0_693

def word796_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_715 word796_0_695

def word796_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_716 word796_0_697

def word796_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_717 word796_0_699

def word796_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_718 word796_0_701

def word796_0_720 : WordLangProgHOL (BitVec 64) :=
.call (some (([128, 244, 20, 136, 78, 194]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 54)) (some 712) ([108, 224, 36, 152, 94, 210]) (some (108, word796_0_703, 796, 55))

def word796_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_719 word796_0_720

def word796_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_721 word796_0_51

def word796_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_670 word796_0_51

def word796_0_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.const 0#64)

def word796_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_723 word796_0_724

def word796_0_726 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 224 (Flapjack.WordRegImm.reg 36) word796_0_722 word796_0_725

def word796_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_710 word796_0_726

def word796_0_728 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_727 word796_0_51

def word796_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_728 word796_0_691

def word796_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_729 word796_0_693

def word796_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_730 word796_0_695

def word796_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_731 word796_0_697

def word796_0_733 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_732 word796_0_699

def word796_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_733 word796_0_701

def word796_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 64)

def word796_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_734 word796_0_735

def word796_0_737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 180)

def word796_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_736 word796_0_737

def word796_0_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 122)

def word796_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_738 word796_0_739

def word796_0_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240 (Flapjack.WordLangExpHOL.var 238)

def word796_0_742 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_740 word796_0_741

def word796_0_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def word796_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_742 word796_0_743

def word796_0_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 142)

def word796_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_744 word796_0_745

def word796_0_747 : WordLangProgHOL (BitVec 64) :=
.call (some (([128, 244, 20, 136, 78, 194]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word796_0_47, 796, 56)) (some 714) ([108, 224, 36, 152, 94, 210, 66, 182, 124, 240, 28, 144]) (some (108, word796_0_703, 796, 57))

def word796_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_746 word796_0_747

def word796_0_749 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_748 word796_0_51

def word796_0_750 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 2)

def word796_0_751 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_749 word796_0_750

def word796_0_752 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 42)

def word796_0_753 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_751 word796_0_752

def word796_0_754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 158)

def word796_0_755 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_753 word796_0_754

def word796_0_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 100)

def word796_0_757 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_755 word796_0_756

def word796_0_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 216)

def word796_0_759 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_757 word796_0_758

def word796_0_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 72)

def word796_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_759 word796_0_760

def word796_0_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 188)

def word796_0_763 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_761 word796_0_762

def word796_0_764 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 224)

def word796_0_765 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_763 word796_0_764

def word796_0_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 108) 182

def word796_0_767 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_765 word796_0_766

def word796_0_768 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 36)

def word796_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_767 word796_0_768

def word796_0_770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 8#64])
  182

def word796_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_769 word796_0_770

def word796_0_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 152)

def word796_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_771 word796_0_772

def word796_0_774 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 16#64])
  182

def word796_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_773 word796_0_774

def word796_0_776 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 94)

def word796_0_777 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_775 word796_0_776

def word796_0_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 24#64])
  182

def word796_0_779 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_777 word796_0_778

def word796_0_780 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 210)

def word796_0_781 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_779 word796_0_780

def word796_0_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 32#64])
  182

def word796_0_783 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_781 word796_0_782

def word796_0_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 66)

def word796_0_785 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_783 word796_0_784

def word796_0_786 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 40#64])
  182

def word796_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_785 word796_0_786

def word796_0_788 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word796_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_787 word796_0_788

def word796_0_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 128)

def word796_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_789 word796_0_790

def word796_0_792 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 244)

def word796_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_791 word796_0_792

def word796_0_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 20)

def word796_0_795 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_793 word796_0_794

def word796_0_796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 136)

def word796_0_797 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_795 word796_0_796

def word796_0_798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 78)

def word796_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_797 word796_0_798

def word796_0_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 194)

def word796_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_799 word796_0_800

def word796_0_802 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_801 word796_0_764

def word796_0_803 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_802 word796_0_766

def word796_0_804 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_803 word796_0_768

def word796_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_804 word796_0_770

def word796_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_805 word796_0_772

def word796_0_807 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_806 word796_0_774

def word796_0_808 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_807 word796_0_776

def word796_0_809 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_808 word796_0_778

def word796_0_810 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_809 word796_0_780

def word796_0_811 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_810 word796_0_782

def word796_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_811 word796_0_784

def word796_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_812 word796_0_786

def word796_0_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def word796_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_813 word796_0_814

def word796_0_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 64)

def word796_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_815 word796_0_816

def word796_0_818 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 180)

def word796_0_819 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_817 word796_0_818

def word796_0_820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 122)

def word796_0_821 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_819 word796_0_820

def word796_0_822 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 238)

def word796_0_823 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_821 word796_0_822

def word796_0_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 26)

def word796_0_825 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_823 word796_0_824

def word796_0_826 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 142)

def word796_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_825 word796_0_826

def word796_0_828 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_827 word796_0_764

def word796_0_829 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_828 word796_0_766

def word796_0_830 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_829 word796_0_768

def word796_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_830 word796_0_770

def word796_0_832 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_831 word796_0_772

def word796_0_833 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_832 word796_0_774

def word796_0_834 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_833 word796_0_776

def word796_0_835 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_834 word796_0_778

def word796_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_835 word796_0_780

def word796_0_837 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_836 word796_0_782

def word796_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_837 word796_0_784

def word796_0_839 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_838 word796_0_786

def word796_0_840 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_839 word796_0_540

def word796_0_841 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [108]

def word796_0_842 : WordLangProgHOL (BitVec 64) :=
.seq word796_0_840 word796_0_841

def pass796_0 : WordLangProgHOL (BitVec 64) :=
word796_0_842
theorem pass796_0_eq : WordSimp.compileExp (source796.2.2) = pass796_0 := by
  kernel_rfl
#print axioms pass796_0_eq
end InitECandidate.Proofs.WordStages
