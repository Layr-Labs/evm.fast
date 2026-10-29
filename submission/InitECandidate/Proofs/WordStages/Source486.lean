import InitECandidate.Proofs.WordStages.Source470
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody486_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody486_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody486_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody486_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody486_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 18) sourceBody486_2 sourceBody486_3

def sourceBody486_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody486_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_4 sourceBody486_5

def sourceBody486_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody486_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody486_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody486_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody486_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_9 sourceBody486_10

def sourceBody486_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_8 sourceBody486_11

def sourceBody486_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody486_12 sourceBody486_10

def sourceBody486_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_13 sourceBody486_5

def sourceBody486_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_14 sourceBody486_10

def sourceBody486_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_7 sourceBody486_15

def sourceBody486_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_6 sourceBody486_16

def sourceBody486_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_1 sourceBody486_17

def sourceBody486_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_0 sourceBody486_18

def sourceBody486_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody486_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody486_22 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody486_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody486_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 10) sourceBody486_23 sourceBody486_1

def sourceBody486_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_24 sourceBody486_5

def sourceBody486_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody486_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody486_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_27 sourceBody486_10

def sourceBody486_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_3 sourceBody486_28

def sourceBody486_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody486_29 sourceBody486_10

def sourceBody486_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_30 sourceBody486_5

def sourceBody486_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_31 sourceBody486_10

def sourceBody486_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_26 sourceBody486_32

def sourceBody486_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_25 sourceBody486_33

def sourceBody486_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_22 sourceBody486_34

def sourceBody486_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_21 sourceBody486_35

def sourceBody486_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
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
        Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody486_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 12,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
                  (Flapjack.WordLangExpHOL.const 6#64))
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody486_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody486_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_39 sourceBody486_10

def sourceBody486_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_38 sourceBody486_40

def sourceBody486_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_37 sourceBody486_41

def sourceBody486_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_10 sourceBody486_42

def sourceBody486_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_36 sourceBody486_43

def sourceBody486_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_20 sourceBody486_44

def sourceBody486_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_10 sourceBody486_45

def sourceBody486_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody486_19 sourceBody486_46

def source486 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (486, 5, sourceBody486_47)
end InitECandidate.Proofs.WordStages
