import InitECandidate.Proofs.WordStages.Source110
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody126_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody126_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody126_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody126_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody126_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 10) sourceBody126_3 sourceBody126_1

def sourceBody126_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_4 sourceBody126_0

def sourceBody126_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody126_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody126_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody126_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 10) sourceBody126_3 sourceBody126_1

def sourceBody126_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_9 sourceBody126_0

def sourceBody126_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody126_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody126_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody126_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_12 sourceBody126_13

def sourceBody126_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_11 sourceBody126_14

def sourceBody126_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody126_15 sourceBody126_13

def sourceBody126_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_16 sourceBody126_0

def sourceBody126_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_17 sourceBody126_13

def sourceBody126_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_6 sourceBody126_18

def sourceBody126_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_10 sourceBody126_19

def sourceBody126_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_8 sourceBody126_20

def sourceBody126_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_7 sourceBody126_21

def sourceBody126_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody126_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody126_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_24 sourceBody126_13

def sourceBody126_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_25 sourceBody126_13

def sourceBody126_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_23 sourceBody126_26

def sourceBody126_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_13 sourceBody126_27

def sourceBody126_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_22 sourceBody126_28

def sourceBody126_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody126_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_29 sourceBody126_30

def sourceBody126_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody126_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody126_31 sourceBody126_32

def sourceBody126_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_33 sourceBody126_0

def sourceBody126_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_34 sourceBody126_13

def sourceBody126_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_6 sourceBody126_35

def sourceBody126_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_5 sourceBody126_36

def sourceBody126_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_2 sourceBody126_37

def sourceBody126_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_1 sourceBody126_38

def sourceBody126_40 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln) sourceBody126_39 (Flapjack.Spt.ls PUnit.unit)

def sourceBody126_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_40 sourceBody126_0

def sourceBody126_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_0 sourceBody126_41

def sourceBody126_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody126_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_43 sourceBody126_14

def sourceBody126_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody126_42 sourceBody126_44

def source126 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (126, 3, sourceBody126_45)
end InitECandidate.Proofs.WordStages
