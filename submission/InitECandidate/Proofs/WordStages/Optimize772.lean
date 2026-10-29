import InitECandidate.Proofs.WordStages.Optimize756
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source772
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody772_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 8), (50, 4), (52, 2), (54, 6)]

def optimizedBody772_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody772_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody772_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody772_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_2 optimizedBody772_3

def optimizedBody772_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_1, 772, 2)) (some 69) ([]) (some (2, optimizedBody772_4, 772, 3))

def optimizedBody772_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody772_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody772_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 0)]

def optimizedBody772_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody772_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody772_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_10 optimizedBody772_3

def optimizedBody772_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_9, 772, 4)) (some 68) ([2]) (some (2, optimizedBody772_11, 772, 5))

def optimizedBody772_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody772_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (4, 50), (50, 52), (52, 54), (58, 58)]

def optimizedBody772_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (4, 50), (50, 52), (52, 54), (58, 58)]

def optimizedBody772_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_15 optimizedBody772_3

def optimizedBody772_17 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_14, 772, 6)) (some 68) ([2]) (some (2, optimizedBody772_16, 772, 7))

def optimizedBody772_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (44, 44), (48, 48), (56, 4), (54, 0), (50, 50), (52, 52), (58, 58)]

def optimizedBody772_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (48, 48), (56, 56), (54, 54), (50, 50), (52, 52), (58, 58)]

def optimizedBody772_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (48, 48), (56, 56), (54, 54), (50, 50), (52, 52), (58, 58)]

def optimizedBody772_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_20 optimizedBody772_3

def optimizedBody772_22 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_19, 772, 8)) (some 768) ([2, 4]) (some (2, optimizedBody772_21, 772, 9))

def optimizedBody772_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (44, 0), (48, 48), (56, 56), (54, 54), (50, 50), (52, 52), (58, 58)]

def optimizedBody772_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (6, 48), (56, 56), (54, 54), (44, 50), (50, 52), (48, 58)]

def optimizedBody772_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (6, 48), (56, 56), (54, 54), (44, 50), (50, 52), (48, 58)]

def optimizedBody772_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_25 optimizedBody772_3

def optimizedBody772_27 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_24, 772, 10)) (some 766) ([2]) (some (2, optimizedBody772_26, 772, 11))

def optimizedBody772_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody772_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody772_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody772_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (4, 4), (52, 6), (56, 56), (10, 10), (54, 54), (44, 44), (0, 0), (50, 50), (48, 48)]

def optimizedBody772_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody772_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody772_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody772_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (58, 0)]

def optimizedBody772_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody772_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (46, 46), (44, 4), (48, 52), (50, 56), (52, 10), (54, 54), (56, 44), (58, 58), (60, 50), (62, 48)]

def optimizedBody772_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (4, 44), (48, 48), (50, 50), (10, 52), (6, 54), (54, 56), (0, 58), (12, 60), (60, 62)]

def optimizedBody772_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (48, 48), (50, 50), (10, 52), (6, 54), (54, 56), (0, 58), (12, 60), (60, 62)]

def optimizedBody772_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_39 optimizedBody772_3

def optimizedBody772_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_38, 772, 12)) (some 770) ([2, 4]) (some (2, optimizedBody772_40, 772, 13))

def optimizedBody772_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (4, 4), (48, 48), (50, 50), (10, 10), (6, 6), (54, 54), (0, 0), (12, 12), (60, 60)]

def optimizedBody772_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_42

def optimizedBody772_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_41 optimizedBody772_43

def optimizedBody772_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_37 optimizedBody772_44

def optimizedBody772_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_45

def optimizedBody772_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (4, 4), (48, 52), (50, 56), (10, 10), (6, 54), (54, 44), (0, 58), (12, 50), (60, 48)]

def optimizedBody772_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_47

def optimizedBody772_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 0) optimizedBody772_46 optimizedBody772_48

def optimizedBody772_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 0 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody772_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody772_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody772_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody772_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody772_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody772_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody772_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody772_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody772_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody772_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody772_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 4), (48, 48), (50, 50), (52, 6), (54, 54), (56, 0), (58, 12), (60, 60)]

def optimizedBody772_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (8, 48), (14, 50), (6, 52), (16, 54), (0, 56), (12, 58), (48, 60)]

def optimizedBody772_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (8, 48), (14, 50), (6, 52), (16, 54), (0, 56), (12, 58), (48, 60)]

def optimizedBody772_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_63 optimizedBody772_3

def optimizedBody772_65 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_62, 772, 14)) (some 771) ([2, 4, 6]) (some (2, optimizedBody772_64, 772, 15))

def optimizedBody772_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody772_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (4, 4), (8, 8), (14, 14), (10, 10), (6, 6), (16, 16), (0, 0), (12, 12), (48, 48)]

def optimizedBody772_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_66 optimizedBody772_67

def optimizedBody772_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_68

def optimizedBody772_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_65 optimizedBody772_69

def optimizedBody772_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_61 optimizedBody772_70

def optimizedBody772_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_71

def optimizedBody772_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (4, 4), (8, 48), (14, 50), (10, 10), (6, 6), (16, 54), (0, 0), (12, 12), (48, 60)]

def optimizedBody772_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_73

def optimizedBody772_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody772_72 optimizedBody772_74

def optimizedBody772_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (4, 4), (52, 8), (56, 14), (10, 10), (54, 6), (44, 16), (0, 0), (50, 12), (48, 48)]

def optimizedBody772_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody772_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_76 optimizedBody772_77

def optimizedBody772_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_78

def optimizedBody772_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_75 optimizedBody772_79

def optimizedBody772_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_60 optimizedBody772_80

def optimizedBody772_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_59 optimizedBody772_81

def optimizedBody772_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_58 optimizedBody772_82

def optimizedBody772_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_57 optimizedBody772_83

def optimizedBody772_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_56 optimizedBody772_84

def optimizedBody772_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_55 optimizedBody772_85

def optimizedBody772_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_33 optimizedBody772_86

def optimizedBody772_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_54 optimizedBody772_87

def optimizedBody772_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_53 optimizedBody772_88

def optimizedBody772_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_52 optimizedBody772_89

def optimizedBody772_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_51 optimizedBody772_90

def optimizedBody772_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_50 optimizedBody772_91

def optimizedBody772_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_33 optimizedBody772_92

def optimizedBody772_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_93

def optimizedBody772_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_49 optimizedBody772_94

def optimizedBody772_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_36 optimizedBody772_95

def optimizedBody772_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_35 optimizedBody772_96

def optimizedBody772_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_34 optimizedBody772_97

def optimizedBody772_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_33 optimizedBody772_98

def optimizedBody772_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_99

def optimizedBody772_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody772_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_101

def optimizedBody772_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody772_100 optimizedBody772_102

def optimizedBody772_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (4, 4), (52, 6), (56, 8), (10, 10), (54, 12), (44, 14), (0, 0), (50, 16), (48, 18)]

def optimizedBody772_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_104

def optimizedBody772_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_103 optimizedBody772_105

def optimizedBody772_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_33 optimizedBody772_106

def optimizedBody772_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_32 optimizedBody772_107

def optimizedBody772_109 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody772_108 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody772_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody772_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody772_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody772_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_112 optimizedBody772_3

def optimizedBody772_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_111, 772, 16)) (some 768) ([2, 4]) (some (2, optimizedBody772_113, 772, 17))

def optimizedBody772_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody772_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody772_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody772_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_117 optimizedBody772_3

def optimizedBody772_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody772_116, 772, 18)) (some 70) ([2]) (some (2, optimizedBody772_118, 772, 19))

def optimizedBody772_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody772_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_59 optimizedBody772_120

def optimizedBody772_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_32 optimizedBody772_121

def optimizedBody772_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_122

def optimizedBody772_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_119 optimizedBody772_123

def optimizedBody772_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_115 optimizedBody772_124

def optimizedBody772_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_125

def optimizedBody772_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_114 optimizedBody772_126

def optimizedBody772_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_110 optimizedBody772_127

def optimizedBody772_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_128

def optimizedBody772_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_109 optimizedBody772_129

def optimizedBody772_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_31 optimizedBody772_130

def optimizedBody772_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_131

def optimizedBody772_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_30 optimizedBody772_132

def optimizedBody772_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_29 optimizedBody772_133

def optimizedBody772_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_28 optimizedBody772_134

def optimizedBody772_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_135

def optimizedBody772_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_27 optimizedBody772_136

def optimizedBody772_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_23 optimizedBody772_137

def optimizedBody772_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_138

def optimizedBody772_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_22 optimizedBody772_139

def optimizedBody772_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_18 optimizedBody772_140

def optimizedBody772_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_141

def optimizedBody772_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_17 optimizedBody772_142

def optimizedBody772_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_13 optimizedBody772_143

def optimizedBody772_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_7 optimizedBody772_144

def optimizedBody772_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_145

def optimizedBody772_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_12 optimizedBody772_146

def optimizedBody772_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_8 optimizedBody772_147

def optimizedBody772_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_7 optimizedBody772_148

def optimizedBody772_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_6 optimizedBody772_149

def optimizedBody772_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_5 optimizedBody772_150

def optimizedBody772_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody772_0 optimizedBody772_151

def oracle772 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))
                27 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.ls 30)) 25 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 0)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 5 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 27 Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 1)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)))
                1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 26 Flapjack.Spt.ln))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 27 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.ls 23)))
                26 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 (Flapjack.Spt.ls 1)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 0)) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 Flapjack.Spt.ln))
                24
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 6)) 26 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 25))))
              24
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22))))
                26 (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 25 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 29 (Flapjack.Spt.ls 24))))
              23 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 27
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 25 (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 29 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                25 (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24 Flapjack.Spt.ln))))))))
def optimized772 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(772, 5, optimizedBody772_152)
theorem optimize772_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source772, oracle772) = optimized772 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize772_eq
end InitECandidate.Proofs.WordStages
