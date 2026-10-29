import InitECandidate.Proofs.WordStages.Source367
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody383_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody383_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody383_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody383_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody383_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody383_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody383_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody383_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody383_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) sourceBody383_6 sourceBody383_7

def sourceBody383_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_8 sourceBody383_3

def sourceBody383_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody383_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 8])

def sourceBody383_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody383_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody383_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody383_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody383_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody383_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 6) sourceBody383_15 sourceBody383_16

def sourceBody383_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_17 sourceBody383_3

def sourceBody383_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody383_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody383_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody383_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_21 sourceBody383_0

def sourceBody383_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_22 sourceBody383_0

def sourceBody383_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_20 sourceBody383_23

def sourceBody383_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_0 sourceBody383_24

def sourceBody383_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody383_25 sourceBody383_0

def sourceBody383_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_26 sourceBody383_3

def sourceBody383_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_27 sourceBody383_0

def sourceBody383_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_19 sourceBody383_28

def sourceBody383_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_18 sourceBody383_29

def sourceBody383_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_14 sourceBody383_30

def sourceBody383_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_13 sourceBody383_31

def sourceBody383_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_12 sourceBody383_32

def sourceBody383_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_11 sourceBody383_33

def sourceBody383_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody383_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody383_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_36 sourceBody383_0

def sourceBody383_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_37 sourceBody383_0

def sourceBody383_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_35 sourceBody383_38

def sourceBody383_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_0 sourceBody383_39

def sourceBody383_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_34 sourceBody383_40

def sourceBody383_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody383_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_41 sourceBody383_42

def sourceBody383_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody383_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody383_43 sourceBody383_44

def sourceBody383_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_45 sourceBody383_3

def sourceBody383_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_46 sourceBody383_0

def sourceBody383_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_10 sourceBody383_47

def sourceBody383_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_9 sourceBody383_48

def sourceBody383_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_5 sourceBody383_49

def sourceBody383_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_4 sourceBody383_50

def sourceBody383_52 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody383_51 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody383_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_52 sourceBody383_3

def sourceBody383_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_3 sourceBody383_53

def sourceBody383_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 16])
        (Flapjack.WordLangExpHOL.const 2#64)])

def sourceBody383_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody383_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_56 sourceBody383_0

def sourceBody383_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_55 sourceBody383_57

def sourceBody383_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_54 sourceBody383_58

def sourceBody383_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_2 sourceBody383_59

def sourceBody383_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_0 sourceBody383_60

def sourceBody383_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_1 sourceBody383_61

def sourceBody383_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody383_0 sourceBody383_62

def source383 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (383, 3, sourceBody383_63)
end InitECandidate.Proofs.WordStages
