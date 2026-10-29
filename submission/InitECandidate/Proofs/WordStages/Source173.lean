import InitECandidate.Proofs.WordStages.Source157
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody173_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody173_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody173_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody173_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody173_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody173_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody173_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 16) sourceBody173_5 sourceBody173_3

def sourceBody173_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_6 sourceBody173_2

def sourceBody173_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody173_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody173_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody173_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_10 sourceBody173_0

def sourceBody173_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_11 sourceBody173_0

def sourceBody173_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_9 sourceBody173_12

def sourceBody173_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_0 sourceBody173_13

def sourceBody173_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody173_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody173_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody173_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_17 sourceBody173_0

def sourceBody173_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_16 sourceBody173_18

def sourceBody173_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_15 sourceBody173_19

def sourceBody173_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_14 sourceBody173_20

def sourceBody173_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody173_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody173_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_23 sourceBody173_0

def sourceBody173_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_24 sourceBody173_0

def sourceBody173_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_22 sourceBody173_25

def sourceBody173_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_0 sourceBody173_26

def sourceBody173_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_21 sourceBody173_27

def sourceBody173_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody173_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_28 sourceBody173_29

def sourceBody173_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody173_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody173_30 sourceBody173_31

def sourceBody173_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_32 sourceBody173_2

def sourceBody173_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_33 sourceBody173_0

def sourceBody173_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_8 sourceBody173_34

def sourceBody173_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_7 sourceBody173_35

def sourceBody173_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_4 sourceBody173_36

def sourceBody173_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_3 sourceBody173_37

def sourceBody173_39 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody173_38 (Flapjack.Spt.ls PUnit.unit)

def sourceBody173_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_39 sourceBody173_2

def sourceBody173_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_2 sourceBody173_40

def sourceBody173_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody173_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody173_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_43 sourceBody173_0

def sourceBody173_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_42 sourceBody173_44

def sourceBody173_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_41 sourceBody173_45

def sourceBody173_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_1 sourceBody173_46

def sourceBody173_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody173_0 sourceBody173_47

def source173 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (173, 4, sourceBody173_48)
end InitECandidate.Proofs.WordStages
