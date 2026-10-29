import InitECandidate.Proofs.WordStages.Optimize625
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source641
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody641_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 8), (50, 4), (46, 12), (62, 2), (56, 10), (78, 6), (80, 14)]

def optimizedBody641_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (48, 48), (50, 50), (4, 46), (62, 62), (56, 56), (78, 78), (80, 80)]

def optimizedBody641_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (4, 46), (62, 62), (56, 56), (78, 78), (80, 80)]

def optimizedBody641_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody641_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_2 optimizedBody641_3

def optimizedBody641_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_1, 641, 2)) (some 69) ([]) (some (2, optimizedBody641_4, 641, 3))

def optimizedBody641_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody641_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody641_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody641_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody641_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody641_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (54, 6), (52, 4), (62, 62), (56, 56), (78, 78), (80, 80)]

def optimizedBody641_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (4, 52), (62, 62), (0, 56), (78, 78), (80, 80)]

def optimizedBody641_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (4, 52), (62, 62), (0, 56), (78, 78), (80, 80)]

def optimizedBody641_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_15 optimizedBody641_3

def optimizedBody641_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_14, 641, 4)) (some 68) ([2]) (some (2, optimizedBody641_16, 641, 5))

def optimizedBody641_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 4), (62, 62), (52, 6), (72, 0),
    (78, 78), (80, 80)]

def optimizedBody641_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 46), (48, 48), (46, 50), (54, 54), (56, 56), (62, 62), (0, 52), (72, 72), (78, 78), (80, 80)]

def optimizedBody641_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (46, 50), (54, 54), (56, 56), (62, 62), (0, 52), (72, 72), (78, 78), (80, 80)]

def optimizedBody641_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_20 optimizedBody641_3

def optimizedBody641_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_19, 641, 6)) (some 635) ([2, 4, 6]) (some (2, optimizedBody641_21, 641, 7))

def optimizedBody641_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (60, 4), (48, 48), (46, 46), (54, 54), (56, 56), (62, 62), (66, 0), (72, 72), (78, 78),
    (80, 80)]

def optimizedBody641_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (60, 60), (48, 48), (0, 46), (54, 54), (56, 56), (62, 62), (66, 66), (72, 72), (78, 78), (80, 80)]

def optimizedBody641_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (0, 46), (54, 54), (56, 56), (62, 62), (66, 66), (72, 72), (78, 78), (80, 80)]

def optimizedBody641_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_25 optimizedBody641_3

def optimizedBody641_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_24, 641, 8)) (some 126) ([2, 4]) (some (2, optimizedBody641_26, 641, 9))

def optimizedBody641_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody641_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody641_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 80), (4, 56), (46, 44), (44, 54)]

def optimizedBody641_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44)]

def optimizedBody641_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44)]

def optimizedBody641_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_32 optimizedBody641_3

def optimizedBody641_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_31, 641, 10)) (some 78) ([2, 4]) (some (2, optimizedBody641_33, 641, 11))

def optimizedBody641_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46)]

def optimizedBody641_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 46)]

def optimizedBody641_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 46)]

def optimizedBody641_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_37 optimizedBody641_3

def optimizedBody641_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_36, 641, 12)) (some 70) ([2]) (some (2, optimizedBody641_38, 641, 13))

def optimizedBody641_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody641_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody641_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_40 optimizedBody641_41

def optimizedBody641_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_29 optimizedBody641_42

def optimizedBody641_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_43

def optimizedBody641_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_39 optimizedBody641_44

def optimizedBody641_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_35 optimizedBody641_45

def optimizedBody641_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_46

def optimizedBody641_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_34 optimizedBody641_47

def optimizedBody641_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_30 optimizedBody641_48

def optimizedBody641_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_49

def optimizedBody641_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(60, 60), (48, 48), (0, 0), (54, 54), (56, 56), (6, 6), (62, 62), (66, 66), (72, 72), (78, 78), (80, 80), (44, 44)]

def optimizedBody641_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody641_50 optimizedBody641_51

def optimizedBody641_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody641_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody641_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody641_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (60, 60), (48, 48), (52, 0), (54, 54), (56, 56), (46, 6), (62, 62), (66, 66), (72, 72),
    (70, 2), (78, 78), (80, 80)]

def optimizedBody641_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (60, 60), (48, 48), (52, 52), (54, 54), (56, 56), (46, 46), (62, 62), (66, 66), (72, 72), (70, 70),
    (78, 78), (80, 80)]

def optimizedBody641_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (52, 52), (54, 54), (56, 56), (46, 46), (62, 62), (66, 66), (72, 72), (70, 70),
    (78, 78), (80, 80)]

def optimizedBody641_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_59 optimizedBody641_3

def optimizedBody641_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_58, 641, 14)) (some 93) ([2, 4]) (some (2, optimizedBody641_60, 641, 15))

def optimizedBody641_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (52, 52), (54, 54), (56, 56), (46, 46), (62, 62), (66, 66), (72, 72), (70, 70),
    (78, 78), (58, 0), (80, 80)]

def optimizedBody641_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (60, 60), (48, 48), (52, 52), (54, 54), (56, 56), (0, 46), (62, 62), (66, 66), (72, 72), (70, 70),
    (78, 78), (58, 58), (80, 80)]

def optimizedBody641_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (52, 52), (54, 54), (56, 56), (0, 46), (62, 62), (66, 66), (72, 72), (70, 70),
    (78, 78), (58, 58), (80, 80)]

def optimizedBody641_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_64 optimizedBody641_3

def optimizedBody641_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_63, 641, 16)) (some 68) ([2]) (some (2, optimizedBody641_65, 641, 17))

def optimizedBody641_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (46, 0), (62, 62), (66, 66), (72, 72),
    (70, 70), (78, 78), (58, 58), (80, 80)]

def optimizedBody641_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 46), (62, 62), (66, 66), (72, 72),
    (70, 70), (78, 78), (58, 58), (80, 80)]

def optimizedBody641_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 46), (62, 62), (66, 66), (72, 72),
    (70, 70), (78, 78), (58, 58), (80, 80)]

def optimizedBody641_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_69 optimizedBody641_3

def optimizedBody641_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_68, 641, 18)) (some 68) ([2]) (some (2, optimizedBody641_70, 641, 19))

def optimizedBody641_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (46, 0), (62, 62), (64, 4), (66, 66),
    (72, 72), (70, 70), (78, 78), (58, 58), (80, 80)]

def optimizedBody641_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 46), (62, 62), (64, 64), (66, 66),
    (72, 72), (70, 70), (78, 78), (46, 58), (80, 80)]

def optimizedBody641_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 46), (62, 62), (64, 64), (66, 66),
    (72, 72), (70, 70), (78, 78), (46, 58), (80, 80)]

def optimizedBody641_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_74 optimizedBody641_3

def optimizedBody641_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_73, 641, 20)) (some 68) ([2]) (some (2, optimizedBody641_75, 641, 21))

def optimizedBody641_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody641_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 0), (62, 62), (64, 64), (66, 66),
    (68, 4), (72, 72), (70, 70), (78, 78), (46, 46), (80, 80)]

def optimizedBody641_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66),
    (68, 68), (72, 72), (70, 70), (78, 78), (0, 46), (80, 80)]

def optimizedBody641_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66),
    (68, 68), (72, 72), (70, 70), (78, 78), (0, 46), (80, 80)]

def optimizedBody641_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_81 optimizedBody641_3

def optimizedBody641_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_80, 641, 22)) (some 68) ([2]) (some (2, optimizedBody641_82, 641, 23))

def optimizedBody641_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66),
    (68, 68), (72, 72), (70, 70), (78, 78), (46, 0), (80, 80), (86, 4)]

def optimizedBody641_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66),
    (68, 68), (72, 72), (70, 70), (78, 78), (0, 46), (80, 80), (86, 86)]

def optimizedBody641_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 66),
    (68, 68), (72, 72), (70, 70), (78, 78), (0, 46), (80, 80), (86, 86)]

def optimizedBody641_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_86 optimizedBody641_3

def optimizedBody641_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_85, 641, 24)) (some 68) ([2]) (some (2, optimizedBody641_87, 641, 25))

def optimizedBody641_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody641_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (70, 70), (78, 78), (82, 0), (80, 80), (86, 86)]

def optimizedBody641_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (58, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (70, 70), (78, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (58, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (70, 70), (78, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_92 optimizedBody641_3

def optimizedBody641_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_91, 641, 26)) (some 68) ([2]) (some (2, optimizedBody641_93, 641, 27))

def optimizedBody641_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (60, 60), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (62, 0), (58, 58), (64, 64),
    (66, 66), (68, 68), (72, 72), (70, 70), (76, 4), (78, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (46, 46), (60, 60), (48, 48), (6, 50), (4, 52), (54, 54), (56, 56), (62, 62), (0, 58), (64, 64),
    (66, 66), (68, 68), (72, 72), (70, 70), (76, 76), (78, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (60, 60), (48, 48), (6, 50), (4, 52), (54, 54), (56, 56), (62, 62), (0, 58), (64, 64),
    (66, 66), (68, 68), (72, 72), (70, 70), (76, 76), (78, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_97 optimizedBody641_3

def optimizedBody641_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_96, 641, 28)) (some 68) ([2]) (some (2, optimizedBody641_98, 641, 29))

def optimizedBody641_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (60, 60), (48, 48), (50, 6), (52, 8), (58, 4), (54, 54), (56, 56),
    (62, 62), (74, 0), (64, 64), (66, 66), (68, 68), (72, 72), (70, 70), (76, 76), (78, 78), (82, 82), (80, 80),
    (86, 86)]

def optimizedBody641_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 46), (60, 60), (46, 48), (0, 50), (16, 52), (58, 58), (48, 54), (52, 56), (8, 62), (74, 74), (10, 64),
    (6, 66), (66, 68), (72, 72), (4, 70), (14, 76), (76, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (60, 60), (46, 48), (0, 50), (16, 52), (58, 58), (48, 54), (52, 56), (8, 62), (74, 74),
    (10, 64), (6, 66), (66, 68), (72, 72), (4, 70), (14, 76), (76, 78), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_102 optimizedBody641_3

def optimizedBody641_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_101, 641, 30)) (some 635) ([2, 4, 6]) (some (2, optimizedBody641_103, 641, 31))

def optimizedBody641_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (68, 12), (60, 60), (46, 46),
    (50, 0), (64, 16), (58, 58), (48, 48), (52, 52), (54, 8), (74, 74), (56, 10), (62, 6), (66, 66), (72, 72), (70, 4),
    (78, 14), (76, 76), (82, 82), (80, 80), (86, 86)]

def optimizedBody641_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (68, 68), (60, 60), (4, 46), (50, 50), (64, 64), (58, 58), (46, 48), (48, 52), (52, 54), (74, 74),
    (54, 56), (56, 62), (62, 66), (72, 72), (70, 70), (78, 78), (0, 76), (82, 82), (66, 80), (86, 86)]

def optimizedBody641_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (68, 68), (60, 60), (4, 46), (50, 50), (64, 64), (58, 58), (46, 48), (48, 52), (52, 54), (74, 74),
    (54, 56), (56, 62), (62, 66), (72, 72), (70, 70), (78, 78), (0, 76), (82, 82), (66, 80), (86, 86)]

def optimizedBody641_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_107 optimizedBody641_3

def optimizedBody641_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_106, 641, 32)) (some 639) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody641_108, 641, 33))

def optimizedBody641_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (68, 68), (60, 60), (76, 4), (50, 50), (64, 64), (58, 58), (46, 46), (48, 48), (52, 52),
    (74, 74), (54, 54), (56, 56), (62, 62), (72, 72), (70, 70), (78, 78), (80, 0), (82, 82), (66, 66), (86, 86)]

def optimizedBody641_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (68, 68), (60, 60), (76, 76), (50, 50), (64, 64), (58, 58), (46, 46), (48, 48), (0, 52), (74, 74),
    (4, 54), (52, 56), (6, 62), (72, 72), (70, 70), (78, 78), (80, 80), (82, 82), (56, 66), (86, 86)]

def optimizedBody641_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (68, 68), (60, 60), (76, 76), (50, 50), (64, 64), (58, 58), (46, 46), (48, 48), (0, 52), (74, 74),
    (4, 54), (52, 56), (6, 62), (72, 72), (70, 70), (78, 78), (80, 80), (82, 82), (56, 66), (86, 86)]

def optimizedBody641_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_112 optimizedBody641_3

def optimizedBody641_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_111, 641, 34)) (some 640) ([2, 4]) (some (2, optimizedBody641_113, 641, 35))

def optimizedBody641_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody641_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 6)]

def optimizedBody641_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 2), (56, 56)]

def optimizedBody641_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 48), (4, 50), (0, 52), (28, 54), (6, 56)]

def optimizedBody641_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48), (4, 50), (0, 52), (28, 54), (6, 56)]

def optimizedBody641_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_120 optimizedBody641_3

def optimizedBody641_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_119, 641, 36)) (some 78) ([2, 4]) (some (2, optimizedBody641_121, 641, 37))

def optimizedBody641_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody641_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody641_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_123 optimizedBody641_124

def optimizedBody641_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_125

def optimizedBody641_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_29 optimizedBody641_124

def optimizedBody641_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_127

def optimizedBody641_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody641_126 optimizedBody641_128

def optimizedBody641_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody641_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody641_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody641_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody641_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_132 optimizedBody641_133

def optimizedBody641_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_134

def optimizedBody641_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody641_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_136 optimizedBody641_133

def optimizedBody641_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_137

def optimizedBody641_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 10) optimizedBody641_135 optimizedBody641_138

def optimizedBody641_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody641_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody641_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(28, 28)]

def optimizedBody641_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody641_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody641_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(28, 28)]

def optimizedBody641_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_144 optimizedBody641_145

def optimizedBody641_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_143 optimizedBody641_146

def optimizedBody641_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_132 optimizedBody641_147

def optimizedBody641_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_143 optimizedBody641_148

def optimizedBody641_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody641_142 optimizedBody641_149

def optimizedBody641_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (8, 8), (4, 4), (28, 28), (6, 6)]

def optimizedBody641_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_151

def optimizedBody641_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_150 optimizedBody641_152

def optimizedBody641_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_141 optimizedBody641_153

def optimizedBody641_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_140 optimizedBody641_154

def optimizedBody641_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_155

def optimizedBody641_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_139 optimizedBody641_156

def optimizedBody641_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_131 optimizedBody641_157

def optimizedBody641_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_130 optimizedBody641_158

def optimizedBody641_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_159

def optimizedBody641_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_160

def optimizedBody641_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_129 optimizedBody641_161

def optimizedBody641_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_123 optimizedBody641_162

def optimizedBody641_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_7 optimizedBody641_163

def optimizedBody641_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_164

def optimizedBody641_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_122 optimizedBody641_165

def optimizedBody641_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_118 optimizedBody641_166

def optimizedBody641_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_117 optimizedBody641_167

def optimizedBody641_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_116 optimizedBody641_168

def optimizedBody641_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_169

def optimizedBody641_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody641_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (68, 68), (60, 60), (76, 76), (52, 50), (64, 64), (58, 58), (46, 46), (48, 8),
    (50, 48), (54, 0), (74, 74), (56, 4), (66, 52), (62, 2), (72, 72), (70, 70), (78, 78), (80, 80), (82, 82), (84, 56),
    (86, 86)]

def optimizedBody641_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (68, 68), (60, 60), (76, 76), (52, 52), (64, 64), (58, 58), (46, 46), (36, 48), (48, 50), (4, 54),
    (74, 74), (54, 56), (66, 66), (28, 62), (72, 72), (56, 70), (70, 78), (62, 80), (78, 82), (50, 84), (10, 86)]

def optimizedBody641_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (68, 68), (60, 60), (76, 76), (52, 52), (64, 64), (58, 58), (46, 46), (36, 48), (48, 50), (4, 54),
    (74, 74), (54, 56), (66, 66), (28, 62), (72, 72), (56, 70), (70, 78), (62, 80), (78, 82), (50, 84), (10, 86)]

def optimizedBody641_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_175 optimizedBody641_3

def optimizedBody641_177 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody641_174, 641, 38)) (some 77) ([2, 4, 6]) (some (2, optimizedBody641_176, 641, 39))

def optimizedBody641_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (68, 68), (60, 60), (76, 76), (52, 52), (64, 64), (58, 58), (46, 46), (36, 36), (48, 48), (4, 4), (74, 74),
    (54, 54), (66, 66), (28, 28), (72, 72), (56, 56), (70, 70), (62, 62), (78, 78), (50, 50), (10, 10)]

def optimizedBody641_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody641_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 36 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody641_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 28), (4, 4), (6, 28), (8, 4), (10, 10), (44, 44), (68, 68), (48, 60), (50, 76), (52, 52), (64, 64), (56, 58),
    (58, 46), (60, 0), (62, 48), (46, 4), (66, 74), (54, 54), (70, 66), (72, 28), (74, 72), (76, 56), (78, 70),
    (80, 62), (82, 78), (84, 50), (86, 10)]

def optimizedBody641_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 68), (48, 48), (50, 50), (52, 52), (16, 64), (56, 56), (58, 58), (60, 60), (62, 62), (8, 46),
    (66, 66), (68, 54), (6, 70), (10, 72), (74, 74), (76, 76), (14, 78), (80, 80), (82, 82), (84, 84), (0, 86)]

def optimizedBody641_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 68), (48, 48), (50, 50), (52, 52), (16, 64), (56, 56), (58, 58), (60, 60), (62, 62), (8, 46),
    (66, 66), (68, 54), (6, 70), (10, 72), (74, 74), (76, 76), (14, 78), (80, 80), (82, 82), (84, 84), (0, 86)]

def optimizedBody641_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_183 optimizedBody641_3

def optimizedBody641_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody641_182, 641, 40)) (some 637) ([2, 4, 6, 8, 10]) (some (2, optimizedBody641_184, 641, 41))

def optimizedBody641_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 0)]

def optimizedBody641_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody641_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 12), (48, 48), (50, 50),
    (52, 52), (54, 16), (56, 56), (58, 58), (60, 60), (62, 62), (64, 8), (66, 66), (68, 68), (70, 6), (72, 10),
    (74, 74), (76, 76), (78, 14), (80, 80), (82, 82), (84, 84), (86, 2)]

def optimizedBody641_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58), (36, 60), (62, 62), (4, 64),
    (66, 66), (6, 68), (70, 70), (28, 72), (74, 74), (76, 76), (78, 78), (18, 80), (82, 82), (84, 84), (10, 86)]

def optimizedBody641_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (12, 50), (52, 52), (54, 54), (56, 56), (58, 58), (36, 60), (62, 62), (4, 64),
    (66, 66), (6, 68), (70, 70), (28, 72), (74, 74), (76, 76), (78, 78), (18, 80), (82, 82), (84, 84), (10, 86)]

def optimizedBody641_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_190 optimizedBody641_3

def optimizedBody641_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody641_189, 641, 42)) (some 639) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody641_191, 641, 43))

def optimizedBody641_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (12, 12)]

def optimizedBody641_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.reg 18)))

def optimizedBody641_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody641_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 36 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody641_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody641_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody641_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (0, 0)]

def optimizedBody641_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 36 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody641_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody641_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody641_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody641_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 28), (4, 4), (6, 6), (8, 4), (10, 10), (44, 44), (46, 46), (48, 48), (50, 12), (52, 52), (54, 54), (56, 56),
    (58, 58), (60, 36), (62, 62), (64, 4), (66, 66), (68, 6), (70, 70), (72, 28), (74, 74), (76, 76), (78, 78),
    (80, 18), (82, 82), (84, 84), (86, 10)]

def optimizedBody641_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 46), (48, 48), (50, 50), (52, 52), (16, 54), (56, 56), (58, 58), (60, 60), (62, 62), (8, 64),
    (66, 66), (68, 68), (6, 70), (10, 72), (74, 74), (76, 76), (14, 78), (80, 80), (82, 82), (84, 84), (0, 86)]

def optimizedBody641_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (48, 48), (50, 50), (52, 52), (16, 54), (56, 56), (58, 58), (60, 60), (62, 62), (8, 64),
    (66, 66), (68, 68), (6, 70), (10, 72), (74, 74), (76, 76), (14, 78), (80, 80), (82, 82), (84, 84), (0, 86)]

def optimizedBody641_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_206 optimizedBody641_3

def optimizedBody641_208 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody641_205, 641, 44)) (some 637) ([2, 4, 6, 8, 10]) (some (2, optimizedBody641_207, 641, 45))

def optimizedBody641_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (24, 48), (12, 50), (20, 52), (8, 54), (14, 56), (46, 58), (36, 60), (16, 62), (4, 64), (22, 66),
    (6, 68), (26, 70), (28, 72), (30, 74), (32, 76), (34, 78), (18, 80), (38, 82), (40, 84), (10, 86)]

def optimizedBody641_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (24, 48), (12, 50), (20, 52), (8, 54), (14, 56), (46, 58), (36, 60), (16, 62), (4, 64),
    (22, 66), (6, 68), (26, 70), (28, 72), (30, 74), (32, 76), (34, 78), (18, 80), (38, 82), (40, 84), (10, 86)]

def optimizedBody641_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_210 optimizedBody641_3

def optimizedBody641_212 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody641_209, 641, 46)) (some 639) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody641_211, 641, 47))

def optimizedBody641_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (0, 0), (24, 24), (12, 12), (20, 20), (8, 8), (14, 14), (46, 46), (36, 36), (16, 16), (4, 4), (22, 22),
    (6, 6), (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (18, 18), (38, 38), (40, 40), (10, 10)]

def optimizedBody641_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_213

def optimizedBody641_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_212 optimizedBody641_214

def optimizedBody641_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_188 optimizedBody641_215

def optimizedBody641_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_187 optimizedBody641_216

def optimizedBody641_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_186 optimizedBody641_217

def optimizedBody641_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_218

def optimizedBody641_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_208 optimizedBody641_219

def optimizedBody641_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_204 optimizedBody641_220

def optimizedBody641_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_221

def optimizedBody641_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (0, 46), (24, 48), (12, 12), (20, 52), (8, 54), (14, 56), (46, 58), (36, 36), (16, 62), (4, 4), (22, 66),
    (6, 6), (26, 70), (28, 28), (30, 74), (32, 76), (34, 78), (18, 18), (38, 82), (40, 84), (10, 10)]

def optimizedBody641_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_223

def optimizedBody641_225 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody641_222 optimizedBody641_224

def optimizedBody641_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (68, 0), (60, 24), (76, 12), (52, 20), (64, 8), (58, 14), (46, 46), (36, 36), (48, 16), (4, 4), (74, 22),
    (54, 6), (66, 26), (28, 28), (72, 30), (56, 32), (70, 34), (62, 18), (78, 38), (50, 40), (10, 10)]

def optimizedBody641_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody641_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_226 optimizedBody641_227

def optimizedBody641_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_228

def optimizedBody641_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_225 optimizedBody641_229

def optimizedBody641_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_123 optimizedBody641_230

def optimizedBody641_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_203 optimizedBody641_231

def optimizedBody641_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_202 optimizedBody641_232

def optimizedBody641_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_201 optimizedBody641_233

def optimizedBody641_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_200 optimizedBody641_234

def optimizedBody641_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_199 optimizedBody641_235

def optimizedBody641_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_198 optimizedBody641_236

def optimizedBody641_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_197 optimizedBody641_237

def optimizedBody641_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_196 optimizedBody641_238

def optimizedBody641_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_179 optimizedBody641_239

def optimizedBody641_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_195 optimizedBody641_240

def optimizedBody641_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_194 optimizedBody641_241

def optimizedBody641_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_193 optimizedBody641_242

def optimizedBody641_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_243

def optimizedBody641_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_192 optimizedBody641_244

def optimizedBody641_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_188 optimizedBody641_245

def optimizedBody641_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_187 optimizedBody641_246

def optimizedBody641_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_186 optimizedBody641_247

def optimizedBody641_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_248

def optimizedBody641_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_185 optimizedBody641_249

def optimizedBody641_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_181 optimizedBody641_250

def optimizedBody641_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_180 optimizedBody641_251

def optimizedBody641_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_179 optimizedBody641_252

def optimizedBody641_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_253

def optimizedBody641_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody641_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_255

def optimizedBody641_257 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 36) optimizedBody641_254 optimizedBody641_256

def optimizedBody641_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (68, 2), (60, 6), (76, 8), (52, 12), (64, 14), (58, 16), (46, 18), (36, 36), (48, 20), (4, 4), (74, 22),
    (54, 24), (66, 26), (28, 28), (72, 30), (56, 32), (70, 34), (62, 38), (78, 40), (50, 42), (10, 10)]

def optimizedBody641_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_258

def optimizedBody641_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_257 optimizedBody641_259

def optimizedBody641_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_179 optimizedBody641_260

def optimizedBody641_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_136 optimizedBody641_261

def optimizedBody641_263 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody641_262 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody641_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (8, 48), (4, 4), (28, 28), (6, 50)]

def optimizedBody641_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_264

def optimizedBody641_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_263 optimizedBody641_265

def optimizedBody641_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_178 optimizedBody641_266

def optimizedBody641_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_267

def optimizedBody641_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_268

def optimizedBody641_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_177 optimizedBody641_269

def optimizedBody641_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_173 optimizedBody641_270

def optimizedBody641_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_172 optimizedBody641_271

def optimizedBody641_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_171 optimizedBody641_272

def optimizedBody641_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_273

def optimizedBody641_275 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 2) optimizedBody641_170 optimizedBody641_274

def optimizedBody641_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 28), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody641_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody641_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody641_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_278 optimizedBody641_3

def optimizedBody641_280 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_277, 641, 48)) (some 636) ([2, 4, 6, 8]) (some (2, optimizedBody641_279, 641, 49))

def optimizedBody641_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody641_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody641_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody641_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_283 optimizedBody641_3

def optimizedBody641_285 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody641_282, 641, 50)) (some 70) ([2]) (some (2, optimizedBody641_284, 641, 51))

def optimizedBody641_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody641_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_40 optimizedBody641_286

def optimizedBody641_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_29 optimizedBody641_287

def optimizedBody641_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_288

def optimizedBody641_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_285 optimizedBody641_289

def optimizedBody641_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_281 optimizedBody641_290

def optimizedBody641_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_291

def optimizedBody641_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_280 optimizedBody641_292

def optimizedBody641_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_276 optimizedBody641_293

def optimizedBody641_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_294

def optimizedBody641_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_275 optimizedBody641_295

def optimizedBody641_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_29 optimizedBody641_296

def optimizedBody641_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_115 optimizedBody641_297

def optimizedBody641_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_298

def optimizedBody641_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_114 optimizedBody641_299

def optimizedBody641_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_110 optimizedBody641_300

def optimizedBody641_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_301

def optimizedBody641_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_109 optimizedBody641_302

def optimizedBody641_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_105 optimizedBody641_303

def optimizedBody641_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_304

def optimizedBody641_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_104 optimizedBody641_305

def optimizedBody641_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_100 optimizedBody641_306

def optimizedBody641_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_307

def optimizedBody641_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_99 optimizedBody641_308

def optimizedBody641_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_95 optimizedBody641_309

def optimizedBody641_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_310

def optimizedBody641_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_311

def optimizedBody641_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_312

def optimizedBody641_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_94 optimizedBody641_313

def optimizedBody641_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_90 optimizedBody641_314

def optimizedBody641_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_89 optimizedBody641_315

def optimizedBody641_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_316

def optimizedBody641_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_317

def optimizedBody641_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_318

def optimizedBody641_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_88 optimizedBody641_319

def optimizedBody641_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_84 optimizedBody641_320

def optimizedBody641_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_12 optimizedBody641_321

def optimizedBody641_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_322

def optimizedBody641_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_323

def optimizedBody641_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_324

def optimizedBody641_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_83 optimizedBody641_325

def optimizedBody641_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_79 optimizedBody641_326

def optimizedBody641_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_78 optimizedBody641_327

def optimizedBody641_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_77 optimizedBody641_328

def optimizedBody641_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_329

def optimizedBody641_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_330

def optimizedBody641_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_76 optimizedBody641_331

def optimizedBody641_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_72 optimizedBody641_332

def optimizedBody641_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_333

def optimizedBody641_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_334

def optimizedBody641_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_335

def optimizedBody641_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_71 optimizedBody641_336

def optimizedBody641_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_67 optimizedBody641_337

def optimizedBody641_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_338

def optimizedBody641_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_339

def optimizedBody641_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_340

def optimizedBody641_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_66 optimizedBody641_341

def optimizedBody641_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_62 optimizedBody641_342

def optimizedBody641_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_12 optimizedBody641_343

def optimizedBody641_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_344

def optimizedBody641_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_345

def optimizedBody641_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_346

def optimizedBody641_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_61 optimizedBody641_347

def optimizedBody641_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_57 optimizedBody641_348

def optimizedBody641_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_56 optimizedBody641_349

def optimizedBody641_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_55 optimizedBody641_350

def optimizedBody641_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_54 optimizedBody641_351

def optimizedBody641_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_53 optimizedBody641_352

def optimizedBody641_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_353

def optimizedBody641_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_354

def optimizedBody641_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_355

def optimizedBody641_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_52 optimizedBody641_356

def optimizedBody641_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_29 optimizedBody641_357

def optimizedBody641_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_28 optimizedBody641_358

def optimizedBody641_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_359

def optimizedBody641_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_27 optimizedBody641_360

def optimizedBody641_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_23 optimizedBody641_361

def optimizedBody641_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_362

def optimizedBody641_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_22 optimizedBody641_363

def optimizedBody641_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_18 optimizedBody641_364

def optimizedBody641_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_365

def optimizedBody641_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_17 optimizedBody641_366

def optimizedBody641_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_13 optimizedBody641_367

def optimizedBody641_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_12 optimizedBody641_368

def optimizedBody641_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_11 optimizedBody641_369

def optimizedBody641_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_10 optimizedBody641_370

def optimizedBody641_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_9 optimizedBody641_371

def optimizedBody641_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_8 optimizedBody641_372

def optimizedBody641_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_7 optimizedBody641_373

def optimizedBody641_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_6 optimizedBody641_374

def optimizedBody641_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_5 optimizedBody641_375

def optimizedBody641_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody641_0 optimizedBody641_376

def oracle641 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 2
                        (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 9))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 30
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 14)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 31 (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 24
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 36 (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 34)) 40
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 2)))))
                  31
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 30
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 22 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 21)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 40
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 0 (Flapjack.Spt.ls 0)) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 8))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 34)) 35 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 22)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 36 (Flapjack.Spt.ls 4)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28
                        (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 20))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 29)) 31
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 14)))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))))
                    25
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 24)) 39
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    0 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 33))) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 0 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 19))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 27 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 28 (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 22
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 38)) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 31 (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 32)) 36
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)) 39
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 3)))))
                  25
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 40 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 0)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 39 (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18)))))
                  39
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 0)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18))))
                    40
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 36)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    Flapjack.Spt.ln)
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 39
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 33 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 Flapjack.Spt.ln))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 16)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 29)) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 43))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 0)) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 29 (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 30
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 40 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 3 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 33 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 33)) 39
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 11)))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 43 Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))
                    31
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 29 (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 30 (Flapjack.Spt.ls 39))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                  40
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 1)) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 9))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.ls 35)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 22)) 36
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 14)) 40
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 34 Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 28)) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 18) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 15)))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 40)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 23)) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 20)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 20))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 26 (Flapjack.Spt.ls 40))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1 (Flapjack.Spt.ls 14)) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 7))))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 27 (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 30)) 39 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 30)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 35 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 31)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 23)) 40
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 13)))))
                  24
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 41)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))
                    27
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 0)) 40
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 2)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 14))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 35 (Flapjack.Spt.ls 8)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 36))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 31
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))
                  28
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 0)) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
                    39
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 30 (Flapjack.Spt.ls 3)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 31 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 32 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 Flapjack.Spt.ln))
                    23
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 17)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16))))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 32)) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 14)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 30 (Flapjack.Spt.ls 33))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 37))))
                  40
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 38)) 27 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
                31
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                    22
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 35 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 35 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 24 (Flapjack.Spt.ls 40)))
                    36
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 30))))
                  23 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 36)) 28 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 29
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 31)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 28 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 29))))
                  26
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 22 (Flapjack.Spt.ls 40)) 39 Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 34))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 31)))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 43 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 31)) 23 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 33 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 31 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 26))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 34)) 24 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 22 (Flapjack.Spt.ls 35)))
                    31
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 33)) 25 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 35 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 27)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 22))))
                    40
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 25))))
                  25 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 39)) 26 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 38)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 27)))
                    24
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 41 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 32)) 23 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
                  39
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln) 33
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 22 Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 32 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 27))))
                  39
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 30)) 26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 36)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 30 (Flapjack.Spt.ls 39)))
                    33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 34))))
                  22 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 34)) 27 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 39
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 28)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 27 (Flapjack.Spt.ls 43)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 30
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 32))))
                  27
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 23)) 36 (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 33))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 28)))
                    23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 40 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 40 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 29)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 31 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                  40
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln) 36
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 25))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 29 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 24))))
                  31
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 22)) 30 Flapjack.Spt.ln) 40
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                24
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 36))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 36)))
                    28
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 32)) 24 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 36 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln) 39
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 25 (Flapjack.Spt.ls 41)))
                    39
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 23))))
                  24 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 35)) 31 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 40
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 37))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 23))))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 39 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 39 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26)) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 30))))))))))))
def optimized641 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(641, 8, optimizedBody641_377)
theorem optimize641_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source641, oracle641) = optimized641 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize641_eq
end InitECandidate.Proofs.WordStages
