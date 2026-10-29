import InitECandidate.Proofs.WordStages.Source82
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody98_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody98_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody98_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody98_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody98_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) sourceBody98_2 sourceBody98_3

def sourceBody98_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody98_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_4 sourceBody98_5

def sourceBody98_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody98_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody98_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 640#64)

def sourceBody98_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody98_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody98_8, 98, 2)) (some 68) ([8]) (some (8, sourceBody98_10, 98, 3))

def sourceBody98_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_11 sourceBody98_5

def sourceBody98_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_12 sourceBody98_8

def sourceBody98_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_9 sourceBody98_13

def sourceBody98_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody98_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody98_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody98_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody98_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_18 sourceBody98_8

def sourceBody98_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_17 sourceBody98_19

def sourceBody98_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_20 sourceBody98_8

def sourceBody98_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_16 sourceBody98_21

def sourceBody98_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_8 sourceBody98_22

def sourceBody98_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_15 sourceBody98_23

def sourceBody98_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_8 sourceBody98_24

def sourceBody98_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_14 sourceBody98_25

def sourceBody98_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_8 sourceBody98_26

def sourceBody98_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_8 sourceBody98_27

def sourceBody98_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody98_28 sourceBody98_8

def sourceBody98_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_29 sourceBody98_5

def sourceBody98_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_30 sourceBody98_8

def sourceBody98_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_7 sourceBody98_31

def sourceBody98_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_6 sourceBody98_32

def sourceBody98_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_1 sourceBody98_33

def sourceBody98_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_0 sourceBody98_34

def sourceBody98_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody98_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody98_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_37 sourceBody98_8

def sourceBody98_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_36 sourceBody98_38

def sourceBody98_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody98_35 sourceBody98_39

def source98 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (98, 1, sourceBody98_40)
end InitECandidate.Proofs.WordStages
