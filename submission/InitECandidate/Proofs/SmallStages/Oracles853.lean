import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source853
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles853
def optimizedBody853_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody853_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody853_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody853_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody853_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 16#64)

def optimizedBody853_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody853_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody853_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 0), (8, 8), (18, 18), (2, 2), (16, 16), (12, 12)]

def optimizedBody853_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (8, 8)]

def optimizedBody853_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody853_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody853_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody853_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody853_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody853_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody853_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody853_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody853_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody853_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody853_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody853_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody853_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody853_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody853_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody853_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody853_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody853_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody853_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody853_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (18, 18), (16, 16), (12, 12)]

def optimizedBody853_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody853_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_28 optimizedBody853_29

def optimizedBody853_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_27 optimizedBody853_30

def optimizedBody853_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_26 optimizedBody853_31

def optimizedBody853_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_25 optimizedBody853_32

def optimizedBody853_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_24 optimizedBody853_33

def optimizedBody853_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_23 optimizedBody853_34

def optimizedBody853_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_22 optimizedBody853_35

def optimizedBody853_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_21 optimizedBody853_36

def optimizedBody853_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_20 optimizedBody853_37

def optimizedBody853_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_19 optimizedBody853_38

def optimizedBody853_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_18 optimizedBody853_39

def optimizedBody853_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_17 optimizedBody853_40

def optimizedBody853_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_16 optimizedBody853_41

def optimizedBody853_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_15 optimizedBody853_42

def optimizedBody853_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_14 optimizedBody853_43

def optimizedBody853_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_13 optimizedBody853_44

def optimizedBody853_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_12 optimizedBody853_45

def optimizedBody853_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_11 optimizedBody853_46

def optimizedBody853_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_10 optimizedBody853_47

def optimizedBody853_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_9 optimizedBody853_48

def optimizedBody853_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_49

def optimizedBody853_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody853_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_51

def optimizedBody853_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 18) optimizedBody853_50 optimizedBody853_52

def optimizedBody853_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_28

def optimizedBody853_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_53 optimizedBody853_54

def optimizedBody853_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_8 optimizedBody853_55

def optimizedBody853_57 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody853_56 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody853_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody853_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody853_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_58 optimizedBody853_59

def optimizedBody853_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_60

def optimizedBody853_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_57 optimizedBody853_61

def optimizedBody853_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_7 optimizedBody853_62

def optimizedBody853_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_6 optimizedBody853_63

def optimizedBody853_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_5 optimizedBody853_64

def optimizedBody853_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_4 optimizedBody853_65

def optimizedBody853_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_3 optimizedBody853_66

def optimizedBody853_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_2 optimizedBody853_67

def optimizedBody853_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_1 optimizedBody853_68

def optimizedBody853_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody853_0 optimizedBody853_69

def oracle853 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 8
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) 9
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 4)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 5))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 9 Flapjack.Spt.ln)))))
      Flapjack.Spt.ln))
def optimized853 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(853, 2, optimizedBody853_70)
end InitECandidate.Proofs.SmallStages.Oracles853
