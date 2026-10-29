import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles641
def optimizedBody641_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody641_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody641_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody641_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (6, 6), (4, 4), (12, 2)]

def optimizedBody641_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody641_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6)]

def optimizedBody641_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody641_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody641_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody641_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody641_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody641_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (16, 44), (8, 46), (10, 48)]

def optimizedBody641_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (8, 46), (10, 48)]

def optimizedBody641_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody641_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_12 optimizedBody641_13

def optimizedBody641_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_11, 641, 2)) (some 137) ([2]) (some (2, optimizedBody641_14, 641, 3))

def optimizedBody641_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody641_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody641_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody641_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody641_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody641_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody641_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody641_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_8 optimizedBody641_23

def optimizedBody641_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_22 optimizedBody641_24

def optimizedBody641_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_21 optimizedBody641_25

def optimizedBody641_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_20 optimizedBody641_26

def optimizedBody641_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_19 optimizedBody641_27

def optimizedBody641_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_18 optimizedBody641_28

def optimizedBody641_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_17 optimizedBody641_29

def optimizedBody641_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_16 optimizedBody641_30

def optimizedBody641_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_31

def optimizedBody641_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_15 optimizedBody641_32

def optimizedBody641_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_33

def optimizedBody641_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_34

def optimizedBody641_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (14, 44), (6, 6), (4, 4)]

def optimizedBody641_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody641_35 optimizedBody641_36

def optimizedBody641_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody641_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody641_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (6, 6), (4, 4), (12, 12)]

def optimizedBody641_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody641_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_40 optimizedBody641_41

def optimizedBody641_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_39 optimizedBody641_42

def optimizedBody641_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_38 optimizedBody641_43

def optimizedBody641_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_44

def optimizedBody641_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_45

def optimizedBody641_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_37 optimizedBody641_46

def optimizedBody641_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_9 optimizedBody641_47

def optimizedBody641_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_8 optimizedBody641_48

def optimizedBody641_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_7 optimizedBody641_49

def optimizedBody641_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_50

def optimizedBody641_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_5 optimizedBody641_51

def optimizedBody641_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_52

def optimizedBody641_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody641_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_54

def optimizedBody641_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody641_53 optimizedBody641_55

def optimizedBody641_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6), (4, 4), (12, 12)]

def optimizedBody641_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_57

def optimizedBody641_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_56 optimizedBody641_58

def optimizedBody641_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_4 optimizedBody641_59

def optimizedBody641_61 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody641_60 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody641_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody641_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody641_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_8 optimizedBody641_63

def optimizedBody641_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_62 optimizedBody641_64

def optimizedBody641_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_65

def optimizedBody641_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_61 optimizedBody641_66

def optimizedBody641_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_3 optimizedBody641_67

def optimizedBody641_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_68

def optimizedBody641_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_1 optimizedBody641_69

def optimizedBody641_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_0 optimizedBody641_70

def oracle641 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 6
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 22
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 5))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized641 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(641, 3, optimizedBody641_71)
end InitECandidate.Proofs.SmallStages.Oracles641
