import InitECandidate.Proofs.WordStages.Source620
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody636_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody636_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody636_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody636_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody636_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody636_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody636_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody636_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 10) sourceBody636_5 sourceBody636_6

def sourceBody636_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_7 sourceBody636_2

def sourceBody636_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody636_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.var 18])

def sourceBody636_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 14)
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody636_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody636_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody636_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody636_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 12) sourceBody636_13 sourceBody636_14

def sourceBody636_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_15 sourceBody636_2

def sourceBody636_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody636_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 2,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 14)
                  (Flapjack.WordLangExpHOL.const 2#64))
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 3#64])
          (Flapjack.WordLangExpHOL.const 3#64)),
      Flapjack.WordLangExpHOL.const 255#64])

def sourceBody636_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_18 sourceBody636_0

def sourceBody636_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_19 sourceBody636_0

def sourceBody636_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody636_20 sourceBody636_0

def sourceBody636_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_21 sourceBody636_2

def sourceBody636_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_22 sourceBody636_0

def sourceBody636_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_17 sourceBody636_23

def sourceBody636_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_16 sourceBody636_24

def sourceBody636_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_12 sourceBody636_25

def sourceBody636_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_11 sourceBody636_26

def sourceBody636_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 18])

def sourceBody636_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody636_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_29 sourceBody636_0

def sourceBody636_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_9 sourceBody636_30

def sourceBody636_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_28 sourceBody636_31

def sourceBody636_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_27 sourceBody636_32

def sourceBody636_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody636_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody636_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_35 sourceBody636_0

def sourceBody636_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_36 sourceBody636_0

def sourceBody636_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_34 sourceBody636_37

def sourceBody636_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_0 sourceBody636_38

def sourceBody636_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_33 sourceBody636_39

def sourceBody636_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_6 sourceBody636_40

def sourceBody636_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_0 sourceBody636_41

def sourceBody636_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_10 sourceBody636_42

def sourceBody636_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_0 sourceBody636_43

def sourceBody636_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody636_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_44 sourceBody636_45

def sourceBody636_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody636_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody636_46 sourceBody636_47

def sourceBody636_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_48 sourceBody636_2

def sourceBody636_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_49 sourceBody636_0

def sourceBody636_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_9 sourceBody636_50

def sourceBody636_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_8 sourceBody636_51

def sourceBody636_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_4 sourceBody636_52

def sourceBody636_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_3 sourceBody636_53

def sourceBody636_55 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody636_54 (Flapjack.Spt.ls PUnit.unit)

def sourceBody636_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_55 sourceBody636_2

def sourceBody636_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_2 sourceBody636_56

def sourceBody636_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody636_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody636_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_59 sourceBody636_0

def sourceBody636_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_58 sourceBody636_60

def sourceBody636_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_57 sourceBody636_61

def sourceBody636_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_1 sourceBody636_62

def sourceBody636_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody636_0 sourceBody636_63

def source636 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (636, 5, sourceBody636_64)
end InitECandidate.Proofs.WordStages
