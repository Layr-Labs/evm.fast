import InitECandidate.Proofs.WordStages.Source537
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody553_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody553_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody553_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody553_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody553_0, 553, 2)) (some 470) ([16]) (some (16, sourceBody553_2, 553, 3))

def sourceBody553_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody553_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_3 sourceBody553_4

def sourceBody553_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_5 sourceBody553_0

def sourceBody553_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_1 sourceBody553_6

def sourceBody553_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_7

def sourceBody553_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_8

def sourceBody553_10 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody553_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody553_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody553_0, 553, 4)) (some 467) ([10]) (some (10, sourceBody553_11, 553, 5))

def sourceBody553_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_12 sourceBody553_4

def sourceBody553_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_13 sourceBody553_0

def sourceBody553_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_10 sourceBody553_14

def sourceBody553_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody553_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody553_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody553_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody553_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody553_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody553_0, 553, 6)) (some 476) ([18, 2, 12, 8]) (some (18, sourceBody553_20, 553, 7))

def sourceBody553_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_21 sourceBody553_4

def sourceBody553_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_22 sourceBody553_0

def sourceBody553_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_19 sourceBody553_23

def sourceBody553_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_18 sourceBody553_24

def sourceBody553_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_17 sourceBody553_25

def sourceBody553_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_16 sourceBody553_26

def sourceBody553_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_27

def sourceBody553_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_28

def sourceBody553_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody553_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody553_0, 553, 8)) (some 490) ([18]) (some (18, sourceBody553_20, 553, 9))

def sourceBody553_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_31 sourceBody553_4

def sourceBody553_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_32 sourceBody553_0

def sourceBody553_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_30 sourceBody553_33

def sourceBody553_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_34

def sourceBody553_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_35

def sourceBody553_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_29 sourceBody553_36

def sourceBody553_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody553_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody553_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_39 sourceBody553_0

def sourceBody553_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_38 sourceBody553_40

def sourceBody553_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_37 sourceBody553_41

def sourceBody553_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_15 sourceBody553_42

def sourceBody553_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_43

def sourceBody553_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_44

def sourceBody553_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_45

def sourceBody553_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_46

def sourceBody553_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_47

def sourceBody553_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_48

def sourceBody553_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_49

def sourceBody553_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_0 sourceBody553_50

def sourceBody553_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody553_9 sourceBody553_51

def source553 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (553, 1, sourceBody553_52)
end InitECandidate.Proofs.WordStages
