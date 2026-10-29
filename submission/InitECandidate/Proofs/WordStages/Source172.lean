import InitECandidate.Proofs.WordStages.Source156
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody172_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody172_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody172_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody172_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody172_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody172_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody172_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody172_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody172_5 sourceBody172_6

def sourceBody172_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_7 sourceBody172_2

def sourceBody172_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody172_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody172_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 12)

def sourceBody172_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_11 sourceBody172_0

def sourceBody172_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_12 sourceBody172_0

def sourceBody172_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_10 sourceBody172_13

def sourceBody172_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_0 sourceBody172_14

def sourceBody172_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody172_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody172_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_17 sourceBody172_0

def sourceBody172_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_18 sourceBody172_0

def sourceBody172_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_16 sourceBody172_19

def sourceBody172_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_0 sourceBody172_20

def sourceBody172_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_15 sourceBody172_21

def sourceBody172_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody172_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_22 sourceBody172_23

def sourceBody172_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody172_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody172_24 sourceBody172_25

def sourceBody172_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_26 sourceBody172_2

def sourceBody172_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_27 sourceBody172_0

def sourceBody172_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_9 sourceBody172_28

def sourceBody172_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_8 sourceBody172_29

def sourceBody172_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_4 sourceBody172_30

def sourceBody172_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_3 sourceBody172_31

def sourceBody172_33 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln) sourceBody172_32 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def sourceBody172_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_33 sourceBody172_2

def sourceBody172_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_2 sourceBody172_34

def sourceBody172_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody172_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody172_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_37 sourceBody172_0

def sourceBody172_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_36 sourceBody172_38

def sourceBody172_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_35 sourceBody172_39

def sourceBody172_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_1 sourceBody172_40

def sourceBody172_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody172_0 sourceBody172_41

def source172 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (172, 2, sourceBody172_42)
end InitECandidate.Proofs.WordStages
