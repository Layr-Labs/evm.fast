import InitECandidate.Proofs.WordStages.Source75
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody91_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody91_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody91_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody91_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody91_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody91_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody91_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody91_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody91_5 sourceBody91_6

def sourceBody91_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_7 sourceBody91_2

def sourceBody91_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody91_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12])

def sourceBody91_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody91_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_11 sourceBody91_0

def sourceBody91_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_10 sourceBody91_12

def sourceBody91_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody91_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.store8 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 2688614400#64, Flapjack.WordLangExpHOL.var 12])

def sourceBody91_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_15 sourceBody91_0

def sourceBody91_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_14 sourceBody91_16

def sourceBody91_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_13 sourceBody91_17

def sourceBody91_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody91_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody91_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_20 sourceBody91_0

def sourceBody91_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_21 sourceBody91_0

def sourceBody91_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_19 sourceBody91_22

def sourceBody91_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_0 sourceBody91_23

def sourceBody91_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_18 sourceBody91_24

def sourceBody91_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody91_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_25 sourceBody91_26

def sourceBody91_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody91_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody91_27 sourceBody91_28

def sourceBody91_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_29 sourceBody91_2

def sourceBody91_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_30 sourceBody91_0

def sourceBody91_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_9 sourceBody91_31

def sourceBody91_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_8 sourceBody91_32

def sourceBody91_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_4 sourceBody91_33

def sourceBody91_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_3 sourceBody91_34

def sourceBody91_36 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody91_35 (Flapjack.Spt.ls PUnit.unit)

def sourceBody91_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_36 sourceBody91_2

def sourceBody91_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_2 sourceBody91_37

def sourceBody91_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody91_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody91_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_40 sourceBody91_0

def sourceBody91_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_39 sourceBody91_41

def sourceBody91_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_38 sourceBody91_42

def sourceBody91_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_1 sourceBody91_43

def sourceBody91_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody91_0 sourceBody91_44

def source91 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (91, 3, sourceBody91_45)
end InitECandidate.Proofs.WordStages
