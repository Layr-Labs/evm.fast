import InitECandidate.Proofs.WordStages.Source322
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody338_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody338_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody338_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody338_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody338_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8, 16, 12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody338_0, 338, 2)) (some 161) ([20, 6]) (some (20, sourceBody338_3, 338, 3))

def sourceBody338_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody338_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_4 sourceBody338_5

def sourceBody338_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_6 sourceBody338_0

def sourceBody338_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_2 sourceBody338_7

def sourceBody338_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_1 sourceBody338_8

def sourceBody338_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody338_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody338_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody338_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody338_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody338_12 sourceBody338_13

def sourceBody338_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_14 sourceBody338_5

def sourceBody338_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody338_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 15#64)

def sourceBody338_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody338_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_18 sourceBody338_0

def sourceBody338_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_19 sourceBody338_0

def sourceBody338_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_17 sourceBody338_20

def sourceBody338_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_21

def sourceBody338_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody338_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_23 sourceBody338_3

def sourceBody338_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_22 sourceBody338_24

def sourceBody338_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody338_25 sourceBody338_0

def sourceBody338_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_26 sourceBody338_5

def sourceBody338_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_27 sourceBody338_0

def sourceBody338_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_16 sourceBody338_28

def sourceBody338_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_15 sourceBody338_29

def sourceBody338_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_11 sourceBody338_30

def sourceBody338_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_10 sourceBody338_31

def sourceBody338_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody338_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody338_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6]

def sourceBody338_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_35 sourceBody338_0

def sourceBody338_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_34 sourceBody338_36

def sourceBody338_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_33 sourceBody338_37

def sourceBody338_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_32 sourceBody338_38

def sourceBody338_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_9 sourceBody338_39

def sourceBody338_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_40

def sourceBody338_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_41

def sourceBody338_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_42

def sourceBody338_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_43

def sourceBody338_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_44

def sourceBody338_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_45

def sourceBody338_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_46

def sourceBody338_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody338_0 sourceBody338_47

def source338 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (338, 3, sourceBody338_48)
end InitECandidate.Proofs.WordStages
