import InitECandidate.Proofs.WordStages.Source450
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody466_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody466_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 240#64])

def sourceBody466_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody466_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody466_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody466_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody466_0, 466, 2)) (some 88) ([16, 10]) (some (16, sourceBody466_4, 466, 3))

def sourceBody466_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody466_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_5 sourceBody466_6

def sourceBody466_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_7 sourceBody466_0

def sourceBody466_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_3 sourceBody466_8

def sourceBody466_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_2 sourceBody466_9

def sourceBody466_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_10

def sourceBody466_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_11

def sourceBody466_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody466_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody466_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody466_0, 466, 4)) (some 89) ([16, 10]) (some (16, sourceBody466_4, 466, 5))

def sourceBody466_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_15 sourceBody466_6

def sourceBody466_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_16 sourceBody466_0

def sourceBody466_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_14 sourceBody466_17

def sourceBody466_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_13 sourceBody466_18

def sourceBody466_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_19

def sourceBody466_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_20

def sourceBody466_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_12 sourceBody466_21

def sourceBody466_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody466_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody466_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody466_0, 466, 6)) (some 89) ([16, 10]) (some (16, sourceBody466_4, 466, 7))

def sourceBody466_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_25 sourceBody466_6

def sourceBody466_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_26 sourceBody466_0

def sourceBody466_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_24 sourceBody466_27

def sourceBody466_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_23 sourceBody466_28

def sourceBody466_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_29

def sourceBody466_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_30

def sourceBody466_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_22 sourceBody466_31

def sourceBody466_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody466_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody466_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_34 sourceBody466_0

def sourceBody466_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_33 sourceBody466_35

def sourceBody466_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_32 sourceBody466_36

def sourceBody466_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_1 sourceBody466_37

def sourceBody466_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody466_0 sourceBody466_38

def source466 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (466, 5, sourceBody466_39)
end InitECandidate.Proofs.WordStages
