import InitECandidate.Proofs.WordStages.Source174
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody190_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody190_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody190_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody190_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody190_0, 190, 2)) (some 188) ([6]) (some (6, sourceBody190_2, 190, 3))

def sourceBody190_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody190_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_3 sourceBody190_4

def sourceBody190_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_5 sourceBody190_0

def sourceBody190_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_1 sourceBody190_6

def sourceBody190_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody190_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody190_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody190_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody190_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 14

def sourceBody190_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_12 sourceBody190_0

def sourceBody190_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_11 sourceBody190_13

def sourceBody190_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_14 sourceBody190_0

def sourceBody190_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_10 sourceBody190_15

def sourceBody190_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_16

def sourceBody190_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_9 sourceBody190_17

def sourceBody190_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_18

def sourceBody190_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody190_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_20 sourceBody190_17

def sourceBody190_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_21

def sourceBody190_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_19 sourceBody190_22

def sourceBody190_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody190_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_24 sourceBody190_17

def sourceBody190_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_25

def sourceBody190_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_23 sourceBody190_26

def sourceBody190_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody190_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody190_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_29 sourceBody190_15

def sourceBody190_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_30

def sourceBody190_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_28 sourceBody190_31

def sourceBody190_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_32

def sourceBody190_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_27 sourceBody190_33

def sourceBody190_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody190_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody190_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_36 sourceBody190_0

def sourceBody190_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_35 sourceBody190_37

def sourceBody190_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_34 sourceBody190_38

def sourceBody190_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_8 sourceBody190_39

def sourceBody190_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_40

def sourceBody190_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_7 sourceBody190_41

def sourceBody190_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_42

def sourceBody190_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody190_0 sourceBody190_43

def source190 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (190, 3, sourceBody190_44)
end InitECandidate.Proofs.WordStages
