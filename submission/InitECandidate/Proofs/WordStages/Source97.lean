import InitECandidate.Proofs.WordStages.Source81
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody97_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody97_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody97_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody97_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
    (Flapjack.WordLangExpHOL.var 6))

def sourceBody97_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody97_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody97_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody97_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 10) sourceBody97_5 sourceBody97_6

def sourceBody97_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_7 sourceBody97_2

def sourceBody97_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody97_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody97_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody97_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_11 sourceBody97_0

def sourceBody97_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_12 sourceBody97_0

def sourceBody97_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_10 sourceBody97_13

def sourceBody97_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_0 sourceBody97_14

def sourceBody97_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody97_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_15 sourceBody97_16

def sourceBody97_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody97_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody97_17 sourceBody97_18

def sourceBody97_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_19 sourceBody97_2

def sourceBody97_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_20 sourceBody97_0

def sourceBody97_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_9 sourceBody97_21

def sourceBody97_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_8 sourceBody97_22

def sourceBody97_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_4 sourceBody97_23

def sourceBody97_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_3 sourceBody97_24

def sourceBody97_26 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln) sourceBody97_25 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def sourceBody97_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_26 sourceBody97_2

def sourceBody97_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_2 sourceBody97_27

def sourceBody97_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody97_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody97_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_30 sourceBody97_0

def sourceBody97_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_29 sourceBody97_31

def sourceBody97_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_28 sourceBody97_32

def sourceBody97_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_1 sourceBody97_33

def sourceBody97_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody97_0 sourceBody97_34

def source97 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (97, 2, sourceBody97_35)
end InitECandidate.Proofs.WordStages
