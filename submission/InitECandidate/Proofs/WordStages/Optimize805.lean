import InitECandidate.Proofs.WordStages.Optimize789
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source805
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody805_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (0, 0), (4, 4)]

def optimizedBody805_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody805_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody805_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 6 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody805_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody805_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody805_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody805_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody805_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody805_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody805_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1#64)

def optimizedBody805_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody805_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody805_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody805_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_9 optimizedBody805_13

def optimizedBody805_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_14

def optimizedBody805_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_15

def optimizedBody805_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody805_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 14) optimizedBody805_16 optimizedBody805_17

def optimizedBody805_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 8), (58, 4), (50, 6), (48, 10), (72, 12)]

def optimizedBody805_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (58, 58), (50, 50), (48, 48), (72, 72)]

def optimizedBody805_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (58, 58), (50, 50), (48, 48), (72, 72)]

def optimizedBody805_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody805_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_21 optimizedBody805_22

def optimizedBody805_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_20, 805, 2)) (some 69) ([]) (some (2, optimizedBody805_23, 805, 3))

def optimizedBody805_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody805_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (58, 58), (50, 50), (52, 0), (48, 48), (72, 72)]

def optimizedBody805_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (58, 58), (50, 50), (52, 52), (4, 48), (72, 72)]

def optimizedBody805_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (58, 58), (50, 50), (52, 52), (4, 48), (72, 72)]

def optimizedBody805_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_28 optimizedBody805_22

def optimizedBody805_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_27, 805, 4)) (some 68) ([2]) (some (2, optimizedBody805_29, 805, 5))

def optimizedBody805_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody805_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 48#64)

def optimizedBody805_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (58, 58), (48, 2), (50, 50), (52, 52), (72, 72)]

def optimizedBody805_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (58, 58), (4, 48), (0, 50), (48, 52), (72, 72)]

def optimizedBody805_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (58, 58), (4, 48), (0, 50), (48, 52), (72, 72)]

def optimizedBody805_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_35 optimizedBody805_22

def optimizedBody805_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_34, 805, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody805_36, 805, 7))

def optimizedBody805_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody805_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody805_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody805_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (58, 58), (48, 48), (72, 72)]

def optimizedBody805_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (10, 10), (8, 8), (6, 6), (4, 4), (12, 12), (44, 44), (46, 46), (58, 58), (0, 48), (72, 72)]

def optimizedBody805_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (58, 58), (0, 48), (72, 72)]

def optimizedBody805_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_43 optimizedBody805_22

def optimizedBody805_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_42, 805, 8)) (some 725) ([2]) (some (2, optimizedBody805_44, 805, 9))

def optimizedBody805_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 14), (50, 10), (58, 58), (52, 8), (54, 6), (56, 4), (60, 12), (72, 72)]

def optimizedBody805_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (14, 46), (0, 48), (10, 50), (58, 58), (8, 52), (6, 54), (4, 56), (12, 60), (72, 72)]

def optimizedBody805_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (0, 48), (10, 50), (58, 58), (8, 52), (6, 54), (4, 56), (12, 60), (72, 72)]

def optimizedBody805_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_48 optimizedBody805_22

def optimizedBody805_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_47, 805, 10)) (some 70) ([2]) (some (2, optimizedBody805_49, 805, 11))

def optimizedBody805_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody805_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody805_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 58), (48, 72)]

def optimizedBody805_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (6, 46), (0, 48)]

def optimizedBody805_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (0, 48)]

def optimizedBody805_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_55 optimizedBody805_22

def optimizedBody805_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_54, 805, 12)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody805_56, 805, 13))

def optimizedBody805_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody805_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody805_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_52 optimizedBody805_59

def optimizedBody805_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_59

def optimizedBody805_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody805_60 optimizedBody805_61

def optimizedBody805_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody805_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody805_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody805_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody805_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_65 optimizedBody805_66

def optimizedBody805_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody805_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_68 optimizedBody805_66

def optimizedBody805_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody805_67 optimizedBody805_69

def optimizedBody805_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody805_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody805_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody805_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody805_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_9 optimizedBody805_74

def optimizedBody805_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_75

def optimizedBody805_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_76

def optimizedBody805_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody805_77 optimizedBody805_17

def optimizedBody805_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (46, 8)]

def optimizedBody805_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 46)]

def optimizedBody805_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 46)]

def optimizedBody805_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_81 optimizedBody805_22

def optimizedBody805_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_80, 805, 14)) (some 766) ([2]) (some (2, optimizedBody805_82, 805, 15))

def optimizedBody805_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody805_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_9 optimizedBody805_84

def optimizedBody805_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_52 optimizedBody805_85

def optimizedBody805_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_86

def optimizedBody805_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_83 optimizedBody805_87

def optimizedBody805_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_79 optimizedBody805_88

def optimizedBody805_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_89

def optimizedBody805_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_90

def optimizedBody805_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_78 optimizedBody805_91

def optimizedBody805_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_73 optimizedBody805_92

def optimizedBody805_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_72 optimizedBody805_93

def optimizedBody805_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_71 optimizedBody805_94

def optimizedBody805_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_95

def optimizedBody805_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_70 optimizedBody805_96

def optimizedBody805_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_64 optimizedBody805_97

def optimizedBody805_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_98

def optimizedBody805_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_99

def optimizedBody805_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_62 optimizedBody805_100

def optimizedBody805_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_101

def optimizedBody805_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_58 optimizedBody805_102

def optimizedBody805_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_103

def optimizedBody805_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_57 optimizedBody805_104

def optimizedBody805_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_53 optimizedBody805_105

def optimizedBody805_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_106

def optimizedBody805_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (10, 10), (58, 58), (8, 8), (6, 6), (4, 4), (12, 12), (72, 72), (44, 44)]

def optimizedBody805_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody805_107 optimizedBody805_108

def optimizedBody805_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody805_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody805_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody805_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody805_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody805_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody805_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody805_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 2), (48, 10), (58, 58), (50, 8), (52, 6), (54, 4), (56, 12), (72, 72)]

def optimizedBody805_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (16, 44), (14, 46), (10, 48), (58, 58), (8, 50), (6, 52), (4, 54), (12, 56), (72, 72)]

def optimizedBody805_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (16, 44), (14, 46), (10, 48), (58, 58), (8, 50), (6, 52), (4, 54), (12, 56), (72, 72)]

def optimizedBody805_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_119 optimizedBody805_22

def optimizedBody805_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_118, 805, 16)) (some 707) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody805_120, 805, 17))

def optimizedBody805_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody805_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_9 optimizedBody805_122

def optimizedBody805_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_123

def optimizedBody805_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_124

def optimizedBody805_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody805_125 optimizedBody805_17

def optimizedBody805_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 16), (58, 58), (72, 72)]

def optimizedBody805_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (10, 10), (8, 8), (4, 4), (12, 12), (6, 6), (44, 44), (58, 58), (72, 72)]

def optimizedBody805_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (72, 72)]

def optimizedBody805_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_129 optimizedBody805_22

def optimizedBody805_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_128, 805, 18)) (some 716) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody805_130, 805, 19))

def optimizedBody805_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 0), (48, 10), (50, 8), (58, 58), (52, 4),
    (54, 12), (72, 72), (56, 6)]

def optimizedBody805_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (4, 4), (6, 6), (8, 8), (10, 10), (0, 2), (44, 44), (14, 46), (22, 48), (20, 50), (58, 58), (16, 52),
    (24, 54), (72, 72), (18, 56)]

def optimizedBody805_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (22, 48), (20, 50), (58, 58), (16, 52), (24, 54), (72, 72), (18, 56)]

def optimizedBody805_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_134 optimizedBody805_22

def optimizedBody805_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_133, 805, 20)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody805_135, 805, 21))

def optimizedBody805_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 14), (52, 22), (56, 20), (58, 58), (60, 16), (62, 24), (72, 72), (84, 18)]

def optimizedBody805_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (4, 4), (6, 6), (8, 8), (10, 10), (26, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58), (60, 60),
    (62, 62), (72, 72), (84, 84)]

def optimizedBody805_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62), (72, 72), (84, 84)]

def optimizedBody805_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_139 optimizedBody805_22

def optimizedBody805_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_138, 805, 22)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody805_140, 805, 23))

def optimizedBody805_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody805_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody805_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody805_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody805_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 240#64))

def optimizedBody805_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 248#64))

def optimizedBody805_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 256#64))

def optimizedBody805_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 264#64))

def optimizedBody805_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 272#64))

def optimizedBody805_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 280#64))

def optimizedBody805_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 26), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (52, 52), (56, 56), (58, 58), (60, 60), (62, 62), (72, 72), (84, 84)]

def optimizedBody805_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 12), (4, 4), (6, 6), (8, 8), (10, 10), (0, 2), (44, 44), (46, 46), (52, 52), (56, 56), (58, 58), (60, 60),
    (62, 62), (72, 72), (84, 84)]

def optimizedBody805_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_153, 805, 24)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody805_140, 805, 25))

def optimizedBody805_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 0 (Flapjack.WordRegImm.imm 1432#64)))

def optimizedBody805_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 6#64)

def optimizedBody805_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 12), (50, 4),
    (52, 52), (54, 6), (56, 56), (58, 58), (60, 60), (62, 62), (64, 8), (72, 72), (74, 10), (82, 2), (84, 84)]

def optimizedBody805_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (0, 2), (8, 8), (4, 4), (12, 12), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (72, 72), (74, 74), (82, 82), (84, 84)]

def optimizedBody805_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (72, 72), (74, 74), (82, 82), (84, 84)]

def optimizedBody805_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_159 optimizedBody805_22

def optimizedBody805_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_158, 805, 26)) (some 722) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody805_160, 805, 27))

def optimizedBody805_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 10), (68, 0), (70, 8), (72, 72), (74, 74), (76, 4), (78, 12),
    (80, 6), (82, 82), (84, 84)]

def optimizedBody805_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (12, 12), (0, 2), (10, 10), (8, 8), (44, 44), (46, 46), (24, 48), (16, 50), (48, 52), (18, 54),
    (50, 56), (52, 58), (54, 60), (56, 62), (20, 64), (58, 66), (60, 68), (62, 70), (64, 72), (22, 74), (66, 76),
    (68, 78), (70, 80), (14, 82), (72, 84)]

def optimizedBody805_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (24, 48), (16, 50), (48, 52), (18, 54), (50, 56), (52, 58), (54, 60), (56, 62), (20, 64),
    (58, 66), (60, 68), (62, 70), (64, 72), (22, 74), (66, 76), (68, 78), (70, 80), (14, 82), (72, 84)]

def optimizedBody805_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_164 optimizedBody805_22

def optimizedBody805_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_163, 805, 28)) (some 715) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody805_165, 805, 29))

def optimizedBody805_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72)]

def optimizedBody805_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (16, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (14, 60), (8, 62), (64, 64),
    (4, 66), (12, 68), (6, 70), (72, 72)]

def optimizedBody805_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (16, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (14, 60), (8, 62), (64, 64),
    (4, 66), (12, 68), (6, 70), (72, 72)]

def optimizedBody805_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_169 optimizedBody805_22

def optimizedBody805_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_168, 805, 30)) (some 706) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody805_170, 805, 31))

def optimizedBody805_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 16), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 10), (60, 14), (62, 8), (64, 64), (66, 4), (68, 12), (70, 6), (72, 72)]

def optimizedBody805_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (18, 60), (20, 62), (4, 64),
    (22, 66), (24, 68), (26, 70), (58, 72)]

def optimizedBody805_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (18, 60), (20, 62), (4, 64),
    (22, 66), (24, 68), (26, 70), (58, 72)]

def optimizedBody805_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_174 optimizedBody805_22

def optimizedBody805_176 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_173, 805, 32)) (some 724) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody805_175, 805, 33))

def optimizedBody805_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody805_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 22), (6, 26), (8, 20), (10, 10), (12, 24), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54),
    (56, 56), (58, 58)]

def optimizedBody805_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (18, 2), (20, 8), (22, 4), (24, 12), (26, 6), (14, 44), (16, 46), (8, 48), (4, 50), (0, 52), (6, 54),
    (12, 56), (28, 58)]

def optimizedBody805_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (16, 46), (8, 48), (4, 50), (0, 52), (6, 54), (12, 56), (28, 58)]

def optimizedBody805_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_180 optimizedBody805_22

def optimizedBody805_182 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody805_179, 805, 34)) (some 712) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody805_181, 805, 35))

def optimizedBody805_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 14), (16, 16), (8, 8), (4, 4), (0, 0), (6, 6), (12, 12), (10, 10), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28)]

def optimizedBody805_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_183

def optimizedBody805_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_182 optimizedBody805_184

def optimizedBody805_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_178 optimizedBody805_185

def optimizedBody805_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_186

def optimizedBody805_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 44), (16, 46), (8, 48), (4, 50), (0, 52), (6, 54), (12, 56), (10, 10), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 58)]

def optimizedBody805_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_188

def optimizedBody805_190 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody805_187 optimizedBody805_189

def optimizedBody805_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (16, 16), (12, 12), (8, 8), (4, 4), (28, 28), (6, 6)]

def optimizedBody805_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody805_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody805_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody805_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (28, 28)]

def optimizedBody805_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody805_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody805_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody805_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody805_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody805_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody805_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody805_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody805_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (18, 18), (24, 24), (10, 10), (20, 20), (26, 26), (22, 22)]

def optimizedBody805_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody805_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (22, 22)]

def optimizedBody805_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody805_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (26, 26)]

def optimizedBody805_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody805_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (20, 20)]

def optimizedBody805_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody805_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody805_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody805_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (24, 24)]

def optimizedBody805_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody805_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody805_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8505329371266088957#64)

def optimizedBody805_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody805_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 17002214543764226050#64)

def optimizedBody805_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody805_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6865905132761471162#64)

def optimizedBody805_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody805_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8632934651105793861#64)

def optimizedBody805_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody805_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6631298214892334189#64)

def optimizedBody805_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody805_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1582556514881692819#64)

def optimizedBody805_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody805_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_228 optimizedBody805_86

def optimizedBody805_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_229

def optimizedBody805_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_227 optimizedBody805_230

def optimizedBody805_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_226 optimizedBody805_231

def optimizedBody805_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_232

def optimizedBody805_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_225 optimizedBody805_233

def optimizedBody805_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_224 optimizedBody805_234

def optimizedBody805_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_235

def optimizedBody805_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_223 optimizedBody805_236

def optimizedBody805_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_222 optimizedBody805_237

def optimizedBody805_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_238

def optimizedBody805_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_221 optimizedBody805_239

def optimizedBody805_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_220 optimizedBody805_240

def optimizedBody805_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_241

def optimizedBody805_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_219 optimizedBody805_242

def optimizedBody805_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_218 optimizedBody805_243

def optimizedBody805_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_244

def optimizedBody805_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_217 optimizedBody805_245

def optimizedBody805_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_216 optimizedBody805_246

def optimizedBody805_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_247

def optimizedBody805_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_215 optimizedBody805_248

def optimizedBody805_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_214 optimizedBody805_249

def optimizedBody805_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_213 optimizedBody805_250

def optimizedBody805_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_212 optimizedBody805_251

def optimizedBody805_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_211 optimizedBody805_252

def optimizedBody805_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_210 optimizedBody805_253

def optimizedBody805_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_209 optimizedBody805_254

def optimizedBody805_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_208 optimizedBody805_255

def optimizedBody805_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_207 optimizedBody805_256

def optimizedBody805_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_206 optimizedBody805_257

def optimizedBody805_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_205 optimizedBody805_258

def optimizedBody805_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_204 optimizedBody805_259

def optimizedBody805_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_203 optimizedBody805_260

def optimizedBody805_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_261

def optimizedBody805_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_202 optimizedBody805_262

def optimizedBody805_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_201 optimizedBody805_263

def optimizedBody805_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_200 optimizedBody805_264

def optimizedBody805_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_199 optimizedBody805_265

def optimizedBody805_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_198 optimizedBody805_266

def optimizedBody805_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_197 optimizedBody805_267

def optimizedBody805_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_196 optimizedBody805_268

def optimizedBody805_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_195 optimizedBody805_269

def optimizedBody805_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_194 optimizedBody805_270

def optimizedBody805_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_193 optimizedBody805_271

def optimizedBody805_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_192 optimizedBody805_272

def optimizedBody805_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_191 optimizedBody805_273

def optimizedBody805_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_274

def optimizedBody805_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_190 optimizedBody805_275

def optimizedBody805_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_177 optimizedBody805_276

def optimizedBody805_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_277

def optimizedBody805_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_176 optimizedBody805_278

def optimizedBody805_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_172 optimizedBody805_279

def optimizedBody805_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_280

def optimizedBody805_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_281

def optimizedBody805_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_126 optimizedBody805_282

def optimizedBody805_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_283

def optimizedBody805_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_284

def optimizedBody805_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_285

def optimizedBody805_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_171 optimizedBody805_286

def optimizedBody805_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_167 optimizedBody805_287

def optimizedBody805_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_288

def optimizedBody805_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_166 optimizedBody805_289

def optimizedBody805_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_162 optimizedBody805_290

def optimizedBody805_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_291

def optimizedBody805_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_161 optimizedBody805_292

def optimizedBody805_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_157 optimizedBody805_293

def optimizedBody805_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_156 optimizedBody805_294

def optimizedBody805_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_155 optimizedBody805_295

def optimizedBody805_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_145 optimizedBody805_296

def optimizedBody805_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_144 optimizedBody805_297

def optimizedBody805_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_143 optimizedBody805_298

def optimizedBody805_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_142 optimizedBody805_299

def optimizedBody805_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_110 optimizedBody805_300

def optimizedBody805_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_301

def optimizedBody805_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_154 optimizedBody805_302

def optimizedBody805_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_152 optimizedBody805_303

def optimizedBody805_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_151 optimizedBody805_304

def optimizedBody805_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_66 optimizedBody805_305

def optimizedBody805_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_150 optimizedBody805_306

def optimizedBody805_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_66 optimizedBody805_307

def optimizedBody805_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_149 optimizedBody805_308

def optimizedBody805_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_66 optimizedBody805_309

def optimizedBody805_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_148 optimizedBody805_310

def optimizedBody805_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_66 optimizedBody805_311

def optimizedBody805_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_147 optimizedBody805_312

def optimizedBody805_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_66 optimizedBody805_313

def optimizedBody805_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_146 optimizedBody805_314

def optimizedBody805_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_145 optimizedBody805_315

def optimizedBody805_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_144 optimizedBody805_316

def optimizedBody805_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_143 optimizedBody805_317

def optimizedBody805_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_142 optimizedBody805_318

def optimizedBody805_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_319

def optimizedBody805_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_141 optimizedBody805_320

def optimizedBody805_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_137 optimizedBody805_321

def optimizedBody805_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_322

def optimizedBody805_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_136 optimizedBody805_323

def optimizedBody805_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_132 optimizedBody805_324

def optimizedBody805_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_325

def optimizedBody805_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_131 optimizedBody805_326

def optimizedBody805_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_127 optimizedBody805_327

def optimizedBody805_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_328

def optimizedBody805_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_329

def optimizedBody805_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_126 optimizedBody805_330

def optimizedBody805_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_12 optimizedBody805_331

def optimizedBody805_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_63 optimizedBody805_332

def optimizedBody805_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_333

def optimizedBody805_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_121 optimizedBody805_334

def optimizedBody805_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_117 optimizedBody805_335

def optimizedBody805_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_116 optimizedBody805_336

def optimizedBody805_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_115 optimizedBody805_337

def optimizedBody805_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_114 optimizedBody805_338

def optimizedBody805_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_113 optimizedBody805_339

def optimizedBody805_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_112 optimizedBody805_340

def optimizedBody805_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_111 optimizedBody805_341

def optimizedBody805_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_110 optimizedBody805_342

def optimizedBody805_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_343

def optimizedBody805_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_344

def optimizedBody805_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_109 optimizedBody805_345

def optimizedBody805_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_52 optimizedBody805_346

def optimizedBody805_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_51 optimizedBody805_347

def optimizedBody805_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_348

def optimizedBody805_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_50 optimizedBody805_349

def optimizedBody805_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_46 optimizedBody805_350

def optimizedBody805_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_351

def optimizedBody805_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_45 optimizedBody805_352

def optimizedBody805_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_41 optimizedBody805_353

def optimizedBody805_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_40 optimizedBody805_354

def optimizedBody805_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_39 optimizedBody805_355

def optimizedBody805_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_38 optimizedBody805_356

def optimizedBody805_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_357

def optimizedBody805_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_37 optimizedBody805_358

def optimizedBody805_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_33 optimizedBody805_359

def optimizedBody805_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_32 optimizedBody805_360

def optimizedBody805_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_31 optimizedBody805_361

def optimizedBody805_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_362

def optimizedBody805_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_30 optimizedBody805_363

def optimizedBody805_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_26 optimizedBody805_364

def optimizedBody805_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_25 optimizedBody805_365

def optimizedBody805_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_366

def optimizedBody805_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_24 optimizedBody805_367

def optimizedBody805_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_19 optimizedBody805_368

def optimizedBody805_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_369

def optimizedBody805_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_11 optimizedBody805_370

def optimizedBody805_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_18 optimizedBody805_371

def optimizedBody805_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_10 optimizedBody805_372

def optimizedBody805_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_9 optimizedBody805_373

def optimizedBody805_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_8 optimizedBody805_374

def optimizedBody805_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_7 optimizedBody805_375

def optimizedBody805_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_2 optimizedBody805_376

def optimizedBody805_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_6 optimizedBody805_377

def optimizedBody805_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_5 optimizedBody805_378

def optimizedBody805_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_2 optimizedBody805_379

def optimizedBody805_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_4 optimizedBody805_380

def optimizedBody805_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_3 optimizedBody805_381

def optimizedBody805_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_2 optimizedBody805_382

def optimizedBody805_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_1 optimizedBody805_383

def optimizedBody805_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody805_0 optimizedBody805_384

def oracle805 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3)) 8
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 36)))
                    22 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)) 1 (Flapjack.Spt.ls 4)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 7 Flapjack.Spt.ln)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 1 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  7
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 42)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4)) 12
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 11)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 8)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 (Flapjack.Spt.ls 8)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 36 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 13)) 36 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 32))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 8)) 10
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln)))
                  6
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 9)) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 37)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 14))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 13)) Flapjack.Spt.ln) 36
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 5 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3)) 3 (Flapjack.Spt.ls 5)) 2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 29
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 30)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 0)) 9
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 9)) (Flapjack.Spt.ls 5)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 36 Flapjack.Spt.ln)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 29 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 10)) 3 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 6
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 41)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)) 7 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 7)) 0 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 14)) 22 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.ls 29))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 31))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 6)) 11
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 10)) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 7
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)))
                  6
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 7 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 3))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 12)) 6 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 22)) 3 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))) 36
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 36)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 9)) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 2 Flapjack.Spt.ln) 36
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 7
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 3 (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 29))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                  (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 25 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 28 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                  (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) (Flapjack.Spt.ls 24)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 26 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 36
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                  (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 36
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                  (Flapjack.Spt.ls 29)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 27 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 36))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 30 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 36)) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 29 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                  (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))))
def optimized805 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(805, 3, optimizedBody805_385)
theorem optimize805_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source805, oracle805) = optimized805 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize805_eq
end InitECandidate.Proofs.WordStages
