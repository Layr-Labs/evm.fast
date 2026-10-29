import InitECandidate.Proofs.WordStages.Source431
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody447_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody447_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody447_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody447_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody447_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody447_0, 447, 2)) (some 186) ([4, 10]) (some (4, sourceBody447_3, 447, 3))

def sourceBody447_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody447_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_4 sourceBody447_5

def sourceBody447_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_6 sourceBody447_0

def sourceBody447_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_2 sourceBody447_7

def sourceBody447_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_1 sourceBody447_8

def sourceBody447_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody447_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody447_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody447_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody447_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody447_12 sourceBody447_13

def sourceBody447_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_14 sourceBody447_5

def sourceBody447_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody447_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody447_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody447_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_18 sourceBody447_0

def sourceBody447_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_17 sourceBody447_19

def sourceBody447_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody447_20 sourceBody447_0

def sourceBody447_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_21 sourceBody447_5

def sourceBody447_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_22 sourceBody447_0

def sourceBody447_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_16 sourceBody447_23

def sourceBody447_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_15 sourceBody447_24

def sourceBody447_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_11 sourceBody447_25

def sourceBody447_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_10 sourceBody447_26

def sourceBody447_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody447_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody447_0, 447, 4)) (some 396) ([10]) (some (10, sourceBody447_28, 447, 5))

def sourceBody447_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_29 sourceBody447_5

def sourceBody447_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_30 sourceBody447_0

def sourceBody447_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_2 sourceBody447_31

def sourceBody447_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_32

def sourceBody447_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_33

def sourceBody447_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_27 sourceBody447_34

def sourceBody447_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody447_0, 447, 6)) (some 398) ([10]) (some (10, sourceBody447_28, 447, 7))

def sourceBody447_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_36 sourceBody447_5

def sourceBody447_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_37 sourceBody447_0

def sourceBody447_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_2 sourceBody447_38

def sourceBody447_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody447_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody447_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_41 sourceBody447_0

def sourceBody447_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_40 sourceBody447_42

def sourceBody447_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_39 sourceBody447_43

def sourceBody447_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_44

def sourceBody447_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_45

def sourceBody447_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_35 sourceBody447_46

def sourceBody447_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_9 sourceBody447_47

def sourceBody447_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_48

def sourceBody447_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_49

def sourceBody447_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_50

def sourceBody447_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody447_0 sourceBody447_51

def source447 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (447, 2, sourceBody447_52)
end InitECandidate.Proofs.WordStages
