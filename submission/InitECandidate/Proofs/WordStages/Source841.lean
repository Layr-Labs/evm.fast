import InitECandidate.Proofs.WordStages.Source825
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody841_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody841_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody841_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody841_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody841_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody841_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody841_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody841_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody841_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody841_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody841_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 4) sourceBody841_8 sourceBody841_9

def sourceBody841_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_10 sourceBody841_5

def sourceBody841_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody841_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody841_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody841_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody841_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 20 4))

def sourceBody841_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_16 sourceBody841_0

def sourceBody841_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_15 sourceBody841_17

def sourceBody841_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_14 sourceBody841_18

def sourceBody841_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 32#64])])

def sourceBody841_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody841_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_21 sourceBody841_0

def sourceBody841_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_22 sourceBody841_0

def sourceBody841_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_20 sourceBody841_23

def sourceBody841_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_19 sourceBody841_24

def sourceBody841_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody841_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody841_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_27 sourceBody841_0

def sourceBody841_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_28 sourceBody841_0

def sourceBody841_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_26 sourceBody841_29

def sourceBody841_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_0 sourceBody841_30

def sourceBody841_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_25 sourceBody841_31

def sourceBody841_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_13 sourceBody841_32

def sourceBody841_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_0 sourceBody841_33

def sourceBody841_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody841_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_34 sourceBody841_35

def sourceBody841_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody841_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody841_36 sourceBody841_37

def sourceBody841_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_38 sourceBody841_5

def sourceBody841_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_39 sourceBody841_0

def sourceBody841_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_12 sourceBody841_40

def sourceBody841_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_11 sourceBody841_41

def sourceBody841_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_7 sourceBody841_42

def sourceBody841_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_6 sourceBody841_43

def sourceBody841_45 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody841_44 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)

def sourceBody841_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_45 sourceBody841_5

def sourceBody841_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_5 sourceBody841_46

def sourceBody841_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody841_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody841_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_49 sourceBody841_0

def sourceBody841_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_48 sourceBody841_50

def sourceBody841_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_47 sourceBody841_51

def sourceBody841_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_4 sourceBody841_52

def sourceBody841_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_0 sourceBody841_53

def sourceBody841_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_3 sourceBody841_54

def sourceBody841_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_0 sourceBody841_55

def sourceBody841_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_2 sourceBody841_56

def sourceBody841_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_0 sourceBody841_57

def sourceBody841_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_1 sourceBody841_58

def sourceBody841_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody841_0 sourceBody841_59

def source841 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (841, 2, sourceBody841_60)
end InitECandidate.Proofs.WordStages
