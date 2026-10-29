import InitECandidate.Proofs.WordStages.Source169
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody185_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody185_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody185_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody185_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody185_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody185_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody185_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody185_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody185_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody185_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 6) sourceBody185_7 sourceBody185_8

def sourceBody185_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_9 sourceBody185_4

def sourceBody185_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody185_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody185_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody185_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody185_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody185_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody185_15 sourceBody185_6

def sourceBody185_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_16 sourceBody185_4

def sourceBody185_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody185_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody185_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody185_19 sourceBody185_0

def sourceBody185_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_20 sourceBody185_4

def sourceBody185_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_21 sourceBody185_0

def sourceBody185_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_18 sourceBody185_22

def sourceBody185_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_17 sourceBody185_23

def sourceBody185_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_14 sourceBody185_24

def sourceBody185_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_13 sourceBody185_25

def sourceBody185_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody185_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody185_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 7#64,
            Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
              [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 7#64]]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody185_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody185_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody185_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody185_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 10) sourceBody185_31 sourceBody185_32

def sourceBody185_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_33 sourceBody185_4

def sourceBody185_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody185_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody185_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody185_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_37 sourceBody185_0

def sourceBody185_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_38 sourceBody185_0

def sourceBody185_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_36 sourceBody185_39

def sourceBody185_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_0 sourceBody185_40

def sourceBody185_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody185_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_42 sourceBody185_39

def sourceBody185_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_0 sourceBody185_43

def sourceBody185_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody185_41 sourceBody185_44

def sourceBody185_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_45 sourceBody185_4

def sourceBody185_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_46 sourceBody185_0

def sourceBody185_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_35 sourceBody185_47

def sourceBody185_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_34 sourceBody185_48

def sourceBody185_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_30 sourceBody185_49

def sourceBody185_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_29 sourceBody185_50

def sourceBody185_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_28 sourceBody185_51

def sourceBody185_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_27 sourceBody185_52

def sourceBody185_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_26 sourceBody185_53

def sourceBody185_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_12 sourceBody185_54

def sourceBody185_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_0 sourceBody185_55

def sourceBody185_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody185_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_56 sourceBody185_57

def sourceBody185_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody185_58 sourceBody185_19

def sourceBody185_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_59 sourceBody185_4

def sourceBody185_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_60 sourceBody185_0

def sourceBody185_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_11 sourceBody185_61

def sourceBody185_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_10 sourceBody185_62

def sourceBody185_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_6 sourceBody185_63

def sourceBody185_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_5 sourceBody185_64

def sourceBody185_66 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody185_65 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody185_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_66 sourceBody185_4

def sourceBody185_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_4 sourceBody185_67

def sourceBody185_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody185_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody185_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_70 sourceBody185_0

def sourceBody185_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_69 sourceBody185_71

def sourceBody185_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_68 sourceBody185_72

def sourceBody185_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_3 sourceBody185_73

def sourceBody185_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_0 sourceBody185_74

def sourceBody185_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_2 sourceBody185_75

def sourceBody185_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_0 sourceBody185_76

def sourceBody185_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_1 sourceBody185_77

def sourceBody185_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody185_0 sourceBody185_78

def source185 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (185, 3, sourceBody185_79)
end InitECandidate.Proofs.WordStages
