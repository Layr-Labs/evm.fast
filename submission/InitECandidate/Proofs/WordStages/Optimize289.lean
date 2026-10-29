import InitECandidate.Proofs.WordStages.Optimize273
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source289
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody289_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody289_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody289_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody289_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody289_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody289_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48)]

def optimizedBody289_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody289_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody289_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_6 optimizedBody289_7

def optimizedBody289_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody289_5, 289, 2)) (some 286) ([2]) (some (2, optimizedBody289_8, 289, 3))

def optimizedBody289_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (6, 6)]

def optimizedBody289_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_10

def optimizedBody289_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_9 optimizedBody289_11

def optimizedBody289_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_4 optimizedBody289_12

def optimizedBody289_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_3 optimizedBody289_13

def optimizedBody289_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_14

def optimizedBody289_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (6, 6)]

def optimizedBody289_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_16

def optimizedBody289_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody289_15 optimizedBody289_17

def optimizedBody289_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody289_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody289_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody289_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody289_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody289_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody289_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 10 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody289_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody289_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody289_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody289_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4), (50, 6), (52, 8), (54, 10)]

def optimizedBody289_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (6, 46), (8, 48), (4, 50), (12, 52), (52, 54)]

def optimizedBody289_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (8, 48), (4, 50), (12, 52), (52, 54)]

def optimizedBody289_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_31 optimizedBody289_7

def optimizedBody289_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody289_30, 289, 4)) (some 68) ([2]) (some (2, optimizedBody289_32, 289, 5))

def optimizedBody289_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody289_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody289_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody289_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 6 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody289_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody289_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody289_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 10)]

def optimizedBody289_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_39 optimizedBody289_40

def optimizedBody289_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_38 optimizedBody289_41

def optimizedBody289_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_37 optimizedBody289_42

def optimizedBody289_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_36 optimizedBody289_43

def optimizedBody289_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_44

def optimizedBody289_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_40

def optimizedBody289_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody289_45 optimizedBody289_46

def optimizedBody289_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody289_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody289_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody289_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody289_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody289_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 10), (52, 52)]

def optimizedBody289_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (4, 46), (8, 48), (0, 50), (6, 52)]

def optimizedBody289_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (4, 46), (8, 48), (0, 50), (6, 52)]

def optimizedBody289_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_55 optimizedBody289_7

def optimizedBody289_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody289_54, 289, 6)) (some 288) ([2, 4, 6]) (some (2, optimizedBody289_56, 289, 7))

def optimizedBody289_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody289_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody289_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody289_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody289_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4), (6, 6)]

def optimizedBody289_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6]

def optimizedBody289_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_62 optimizedBody289_63

def optimizedBody289_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_61 optimizedBody289_64

def optimizedBody289_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_27 optimizedBody289_65

def optimizedBody289_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_60 optimizedBody289_66

def optimizedBody289_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_59 optimizedBody289_67

def optimizedBody289_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_58 optimizedBody289_68

def optimizedBody289_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_69

def optimizedBody289_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_57 optimizedBody289_70

def optimizedBody289_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_53 optimizedBody289_71

def optimizedBody289_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_52 optimizedBody289_72

def optimizedBody289_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_51 optimizedBody289_73

def optimizedBody289_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_50 optimizedBody289_74

def optimizedBody289_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_49 optimizedBody289_75

def optimizedBody289_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_48 optimizedBody289_76

def optimizedBody289_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_27 optimizedBody289_77

def optimizedBody289_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_78

def optimizedBody289_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_47 optimizedBody289_79

def optimizedBody289_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_1 optimizedBody289_80

def optimizedBody289_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_35 optimizedBody289_81

def optimizedBody289_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_34 optimizedBody289_82

def optimizedBody289_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_83

def optimizedBody289_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_33 optimizedBody289_84

def optimizedBody289_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_29 optimizedBody289_85

def optimizedBody289_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_28 optimizedBody289_86

def optimizedBody289_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_27 optimizedBody289_87

def optimizedBody289_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_26 optimizedBody289_88

def optimizedBody289_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_23 optimizedBody289_89

def optimizedBody289_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_25 optimizedBody289_90

def optimizedBody289_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_24 optimizedBody289_91

def optimizedBody289_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_23 optimizedBody289_92

def optimizedBody289_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_22 optimizedBody289_93

def optimizedBody289_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_21 optimizedBody289_94

def optimizedBody289_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_20 optimizedBody289_95

def optimizedBody289_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_19 optimizedBody289_96

def optimizedBody289_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_2 optimizedBody289_97

def optimizedBody289_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_18 optimizedBody289_98

def optimizedBody289_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_1 optimizedBody289_99

def optimizedBody289_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody289_0 optimizedBody289_100

def oracle289 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 2 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)))
              2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
              3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              0 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln) (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))))))
def optimized289 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(289, 3, optimizedBody289_101)
theorem optimize289_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source289, oracle289) = optimized289 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize289_eq
end InitECandidate.Proofs.WordStages
