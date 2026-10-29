import InitECandidate.Proofs.WordStages.Source136
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody152_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody152_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody152_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody152_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody152_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody152_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody152_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody152_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 8) sourceBody152_5 sourceBody152_6

def sourceBody152_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_7 sourceBody152_2

def sourceBody152_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody152_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 2#64)])

def sourceBody152_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody152_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody152_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody152_0, 152, 2)) (some 88) ([10, 8]) (some (10, sourceBody152_12, 152, 3))

def sourceBody152_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_13 sourceBody152_2

def sourceBody152_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_14 sourceBody152_0

def sourceBody152_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_11 sourceBody152_15

def sourceBody152_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_10 sourceBody152_16

def sourceBody152_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_0 sourceBody152_17

def sourceBody152_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_0 sourceBody152_18

def sourceBody152_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody152_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody152_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_21 sourceBody152_0

def sourceBody152_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_22 sourceBody152_0

def sourceBody152_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_20 sourceBody152_23

def sourceBody152_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_0 sourceBody152_24

def sourceBody152_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_19 sourceBody152_25

def sourceBody152_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody152_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_26 sourceBody152_27

def sourceBody152_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody152_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody152_28 sourceBody152_29

def sourceBody152_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_30 sourceBody152_2

def sourceBody152_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_31 sourceBody152_0

def sourceBody152_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_9 sourceBody152_32

def sourceBody152_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_8 sourceBody152_33

def sourceBody152_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_4 sourceBody152_34

def sourceBody152_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_3 sourceBody152_35

def sourceBody152_37 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody152_36 (Flapjack.Spt.ls PUnit.unit)

def sourceBody152_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_37 sourceBody152_2

def sourceBody152_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_2 sourceBody152_38

def sourceBody152_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody152_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody152_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_41 sourceBody152_0

def sourceBody152_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_40 sourceBody152_42

def sourceBody152_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_39 sourceBody152_43

def sourceBody152_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_1 sourceBody152_44

def sourceBody152_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody152_0 sourceBody152_45

def source152 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (152, 3, sourceBody152_46)
end InitECandidate.Proofs.WordStages
