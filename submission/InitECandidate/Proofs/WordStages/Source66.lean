import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody66_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody66_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody66_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 33#64])

def sourceBody66_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_2 sourceBody66_0

def sourceBody66_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_1 sourceBody66_3

def sourceBody66_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_4

def sourceBody66_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody66_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody66_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_7 sourceBody66_0

def sourceBody66_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_6 sourceBody66_8

def sourceBody66_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_9

def sourceBody66_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_5 sourceBody66_10

def sourceBody66_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody66_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody66_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_13 sourceBody66_0

def sourceBody66_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_12 sourceBody66_14

def sourceBody66_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_15

def sourceBody66_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_11 sourceBody66_16

def sourceBody66_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap)

def sourceBody66_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody66_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap)

def sourceBody66_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody66_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]) 6 10 4 8
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)

def sourceBody66_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_21 sourceBody66_22

def sourceBody66_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_23

def sourceBody66_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_20 sourceBody66_24

def sourceBody66_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_25

def sourceBody66_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_19 sourceBody66_26

def sourceBody66_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_27

def sourceBody66_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_18 sourceBody66_28

def sourceBody66_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_29

def sourceBody66_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_17 sourceBody66_30

def sourceBody66_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody66_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_32 sourceBody66_0

def sourceBody66_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_33 sourceBody66_0

def sourceBody66_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_1 sourceBody66_34

def sourceBody66_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_0 sourceBody66_35

def sourceBody66_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody66_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody66_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_37 sourceBody66_38

def sourceBody66_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_36 sourceBody66_39

def sourceBody66_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody66_31 sourceBody66_40

def source66 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (66, 2, sourceBody66_41)
end InitECandidate.Proofs.WordStages
