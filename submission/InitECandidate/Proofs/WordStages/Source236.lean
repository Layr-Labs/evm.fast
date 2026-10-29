import InitECandidate.Proofs.WordStages.Source220
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody236_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody236_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody236_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody236_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody236_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody236_0, 236, 2)) (some 78) ([12, 10]) (some (12, sourceBody236_3, 236, 3))

def sourceBody236_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody236_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_4 sourceBody236_5

def sourceBody236_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_6 sourceBody236_0

def sourceBody236_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_2 sourceBody236_7

def sourceBody236_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_1 sourceBody236_8

def sourceBody236_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_0 sourceBody236_9

def sourceBody236_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_0 sourceBody236_10

def sourceBody236_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody236_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody236_0, 236, 4)) (some 87) ([12, 10]) (some (12, sourceBody236_3, 236, 5))

def sourceBody236_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_13 sourceBody236_5

def sourceBody236_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_14 sourceBody236_0

def sourceBody236_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_12 sourceBody236_15

def sourceBody236_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_1 sourceBody236_16

def sourceBody236_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_0 sourceBody236_17

def sourceBody236_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_0 sourceBody236_18

def sourceBody236_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_11 sourceBody236_19

def sourceBody236_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody236_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody236_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody236_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody236_0, 236, 6)) (some 154) ([12, 10, 14]) (some (12, sourceBody236_3, 236, 7))

def sourceBody236_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_24 sourceBody236_5

def sourceBody236_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_25 sourceBody236_0

def sourceBody236_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_23 sourceBody236_26

def sourceBody236_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_22 sourceBody236_27

def sourceBody236_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_21 sourceBody236_28

def sourceBody236_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_0 sourceBody236_29

def sourceBody236_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_0 sourceBody236_30

def sourceBody236_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_20 sourceBody236_31

def sourceBody236_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody236_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody236_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_34 sourceBody236_0

def sourceBody236_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_33 sourceBody236_35

def sourceBody236_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody236_32 sourceBody236_36

def source236 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (236, 4, sourceBody236_37)
end InitECandidate.Proofs.WordStages
