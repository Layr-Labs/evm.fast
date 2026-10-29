import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source637
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles637
def optimizedBody637_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody637_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody637_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody637_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 8), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody637_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody637_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody637_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody637_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody637_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 14 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody637_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody637_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody637_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 16 14 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody637_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody637_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody637_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody637_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody637_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody637_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody637_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody637_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody637_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody637_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 8)]

def optimizedBody637_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_22 optimizedBody637_23

def optimizedBody637_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_21 optimizedBody637_24

def optimizedBody637_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_20 optimizedBody637_25

def optimizedBody637_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_19 optimizedBody637_26

def optimizedBody637_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_18 optimizedBody637_27

def optimizedBody637_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_10 optimizedBody637_28

def optimizedBody637_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_17 optimizedBody637_29

def optimizedBody637_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_16 optimizedBody637_30

def optimizedBody637_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_15 optimizedBody637_31

def optimizedBody637_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_14 optimizedBody637_32

def optimizedBody637_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_13 optimizedBody637_33

def optimizedBody637_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_34

def optimizedBody637_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_23

def optimizedBody637_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 4) optimizedBody637_35 optimizedBody637_36

def optimizedBody637_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody637_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody637_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody637_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody637_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody637_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (4, 4), (2, 2), (10, 10), (6, 6)]

def optimizedBody637_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody637_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_43 optimizedBody637_44

def optimizedBody637_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_42 optimizedBody637_45

def optimizedBody637_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_7 optimizedBody637_46

def optimizedBody637_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_41 optimizedBody637_47

def optimizedBody637_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_40 optimizedBody637_48

def optimizedBody637_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_39 optimizedBody637_49

def optimizedBody637_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_38 optimizedBody637_50

def optimizedBody637_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_51

def optimizedBody637_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_37 optimizedBody637_52

def optimizedBody637_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_12 optimizedBody637_53

def optimizedBody637_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_11 optimizedBody637_54

def optimizedBody637_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_10 optimizedBody637_55

def optimizedBody637_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_9 optimizedBody637_56

def optimizedBody637_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_8 optimizedBody637_57

def optimizedBody637_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_7 optimizedBody637_58

def optimizedBody637_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_6 optimizedBody637_59

def optimizedBody637_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_5 optimizedBody637_60

def optimizedBody637_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_61

def optimizedBody637_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody637_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_63

def optimizedBody637_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody637_62 optimizedBody637_64

def optimizedBody637_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_43

def optimizedBody637_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_65 optimizedBody637_66

def optimizedBody637_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_4 optimizedBody637_67

def optimizedBody637_69 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody637_68 (Flapjack.Spt.ls PUnit.unit)

def optimizedBody637_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody637_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody637_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_15 optimizedBody637_71

def optimizedBody637_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_70 optimizedBody637_72

def optimizedBody637_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_73

def optimizedBody637_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_69 optimizedBody637_74

def optimizedBody637_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_3 optimizedBody637_75

def optimizedBody637_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_2 optimizedBody637_76

def optimizedBody637_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_1 optimizedBody637_77

def optimizedBody637_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody637_0 optimizedBody637_78

def oracle637 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.ls 7)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
              4 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.ls 4)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 8)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 (Flapjack.Spt.ls 4)) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 5
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 4)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))))
      Flapjack.Spt.ln))
def optimized637 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(637, 5, optimizedBody637_79)
end InitECandidate.Proofs.SmallStages.Oracles637
