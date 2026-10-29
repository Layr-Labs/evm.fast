import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles755
def optimizedBody755_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 8), (50, 4), (52, 2), (54, 6)]

def optimizedBody755_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody755_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody755_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody755_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_2 optimizedBody755_3

def optimizedBody755_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody755_1, 755, 2)) (some 69) ([]) (some (2, optimizedBody755_4, 755, 3))

def optimizedBody755_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody755_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody755_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 0)]

def optimizedBody755_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody755_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody755_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_10 optimizedBody755_3

def optimizedBody755_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody755_9, 755, 4)) (some 68) ([2]) (some (2, optimizedBody755_11, 755, 5))

def optimizedBody755_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody755_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (0, 44), (44, 48), (4, 50), (50, 52), (52, 54), (58, 58)]

def optimizedBody755_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (44, 48), (4, 50), (50, 52), (52, 54), (58, 58)]

def optimizedBody755_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_15 optimizedBody755_3

def optimizedBody755_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody755_14, 755, 6)) (some 68) ([2]) (some (2, optimizedBody755_16, 755, 7))

def optimizedBody755_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (54, 0), (44, 44), (56, 4), (48, 6), (50, 50), (52, 52), (58, 58)]

def optimizedBody755_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (54, 54), (44, 44), (56, 56), (0, 48), (50, 50), (52, 52), (58, 58)]

def optimizedBody755_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (44, 44), (56, 56), (0, 48), (50, 50), (52, 52), (58, 58)]

def optimizedBody755_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_20 optimizedBody755_3

def optimizedBody755_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody755_19, 755, 8)) (some 739) ([2, 4]) (some (2, optimizedBody755_21, 755, 9))

def optimizedBody755_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (54, 54), (44, 44), (56, 56), (48, 0), (50, 50), (52, 52), (58, 58)]

def optimizedBody755_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (54, 54), (6, 44), (56, 56), (4, 48), (44, 50), (50, 52), (48, 58)]

def optimizedBody755_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (6, 44), (56, 56), (4, 48), (44, 50), (50, 52), (48, 58)]

def optimizedBody755_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_25 optimizedBody755_3

def optimizedBody755_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody755_24, 755, 10)) (some 741) ([2]) (some (2, optimizedBody755_26, 755, 11))

def optimizedBody755_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody755_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody755_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody755_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (54, 54), (52, 6), (56, 56), (10, 10), (4, 4), (44, 44), (0, 0), (50, 50), (48, 48)]

def optimizedBody755_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody755_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody755_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody755_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (58, 2)]

def optimizedBody755_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody755_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (46, 46), (54, 54), (48, 52), (50, 56), (44, 58), (52, 4), (56, 44), (58, 0), (60, 50), (62, 48)]

def optimizedBody755_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (6, 54), (48, 48), (50, 50), (10, 44), (4, 52), (56, 56), (0, 58), (12, 60), (60, 62)]

def optimizedBody755_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 54), (48, 48), (50, 50), (10, 44), (4, 52), (56, 56), (0, 58), (12, 60), (60, 62)]

def optimizedBody755_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_39 optimizedBody755_3

def optimizedBody755_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody755_38, 755, 12)) (some 751) ([2, 4]) (some (2, optimizedBody755_40, 755, 13))

def optimizedBody755_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (48, 48), (50, 50), (10, 10), (4, 4), (56, 56), (0, 0), (12, 12), (60, 60)]

def optimizedBody755_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_42

def optimizedBody755_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_41 optimizedBody755_43

def optimizedBody755_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_37 optimizedBody755_44

def optimizedBody755_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_45

def optimizedBody755_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 54), (48, 52), (50, 56), (10, 58), (4, 4), (56, 44), (0, 0), (12, 50), (60, 48)]

def optimizedBody755_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_47

def optimizedBody755_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody755_46 optimizedBody755_48

def optimizedBody755_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody755_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody755_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody755_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody755_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody755_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody755_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody755_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody755_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody755_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody755_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody755_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 6), (48, 48), (50, 50), (52, 10), (54, 4), (56, 56), (58, 12), (60, 60)]

def optimizedBody755_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 44), (8, 48), (14, 50), (10, 52), (4, 54), (16, 56), (12, 58), (48, 60)]

def optimizedBody755_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 44), (8, 48), (14, 50), (10, 52), (4, 54), (16, 56), (12, 58), (48, 60)]

def optimizedBody755_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_63 optimizedBody755_3

def optimizedBody755_65 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody755_62, 755, 14)) (some 750) ([2, 4, 6]) (some (2, optimizedBody755_64, 755, 15))

def optimizedBody755_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody755_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (8, 8), (14, 14), (10, 10), (4, 4), (16, 16), (0, 0), (12, 12), (48, 48)]

def optimizedBody755_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_66 optimizedBody755_67

def optimizedBody755_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_68

def optimizedBody755_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_65 optimizedBody755_69

def optimizedBody755_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_61 optimizedBody755_70

def optimizedBody755_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_71

def optimizedBody755_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (8, 48), (14, 50), (10, 10), (4, 4), (16, 56), (0, 0), (12, 12), (48, 60)]

def optimizedBody755_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_73

def optimizedBody755_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody755_72 optimizedBody755_74

def optimizedBody755_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (54, 6), (52, 8), (56, 14), (10, 10), (4, 4), (44, 16), (0, 0), (50, 12), (48, 48)]

def optimizedBody755_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody755_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_76 optimizedBody755_77

def optimizedBody755_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_78

def optimizedBody755_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_75 optimizedBody755_79

def optimizedBody755_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_60 optimizedBody755_80

def optimizedBody755_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_59 optimizedBody755_81

def optimizedBody755_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_58 optimizedBody755_82

def optimizedBody755_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_57 optimizedBody755_83

def optimizedBody755_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_56 optimizedBody755_84

def optimizedBody755_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_55 optimizedBody755_85

def optimizedBody755_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_33 optimizedBody755_86

def optimizedBody755_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_54 optimizedBody755_87

def optimizedBody755_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_53 optimizedBody755_88

def optimizedBody755_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_52 optimizedBody755_89

def optimizedBody755_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_51 optimizedBody755_90

def optimizedBody755_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_50 optimizedBody755_91

def optimizedBody755_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_33 optimizedBody755_92

def optimizedBody755_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_93

def optimizedBody755_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_49 optimizedBody755_94

def optimizedBody755_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_36 optimizedBody755_95

def optimizedBody755_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_35 optimizedBody755_96

def optimizedBody755_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_34 optimizedBody755_97

def optimizedBody755_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_33 optimizedBody755_98

def optimizedBody755_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_99

def optimizedBody755_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody755_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_101

def optimizedBody755_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody755_100 optimizedBody755_102

def optimizedBody755_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (54, 6), (52, 8), (56, 12), (10, 10), (4, 4), (44, 14), (0, 0), (50, 16), (48, 18)]

def optimizedBody755_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_104

def optimizedBody755_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_103 optimizedBody755_105

def optimizedBody755_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_33 optimizedBody755_106

def optimizedBody755_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_32 optimizedBody755_107

def optimizedBody755_109 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody755_108 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody755_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody755_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody755_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody755_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_112 optimizedBody755_3

def optimizedBody755_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody755_111, 755, 16)) (some 739) ([2, 4]) (some (2, optimizedBody755_113, 755, 17))

def optimizedBody755_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody755_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody755_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody755_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_117 optimizedBody755_3

def optimizedBody755_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody755_116, 755, 18)) (some 70) ([2]) (some (2, optimizedBody755_118, 755, 19))

def optimizedBody755_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody755_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_59 optimizedBody755_120

def optimizedBody755_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_32 optimizedBody755_121

def optimizedBody755_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_122

def optimizedBody755_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_119 optimizedBody755_123

def optimizedBody755_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_115 optimizedBody755_124

def optimizedBody755_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_125

def optimizedBody755_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_114 optimizedBody755_126

def optimizedBody755_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_110 optimizedBody755_127

def optimizedBody755_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_128

def optimizedBody755_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_109 optimizedBody755_129

def optimizedBody755_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_31 optimizedBody755_130

def optimizedBody755_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_131

def optimizedBody755_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_30 optimizedBody755_132

def optimizedBody755_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_29 optimizedBody755_133

def optimizedBody755_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_28 optimizedBody755_134

def optimizedBody755_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_135

def optimizedBody755_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_27 optimizedBody755_136

def optimizedBody755_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_23 optimizedBody755_137

def optimizedBody755_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_138

def optimizedBody755_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_22 optimizedBody755_139

def optimizedBody755_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_18 optimizedBody755_140

def optimizedBody755_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_141

def optimizedBody755_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_17 optimizedBody755_142

def optimizedBody755_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_13 optimizedBody755_143

def optimizedBody755_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_7 optimizedBody755_144

def optimizedBody755_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_145

def optimizedBody755_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_12 optimizedBody755_146

def optimizedBody755_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_8 optimizedBody755_147

def optimizedBody755_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_7 optimizedBody755_148

def optimizedBody755_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_6 optimizedBody755_149

def optimizedBody755_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_5 optimizedBody755_150

def optimizedBody755_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_0 optimizedBody755_151

def oracle755 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 1)) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                27 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.ls 30)) 25 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.ls 5)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 5 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 1)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 Flapjack.Spt.ln))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 29 (Flapjack.Spt.ls 23)))
                26 (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.ls 0)) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 23 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 Flapjack.Spt.ln))
                24
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 6)) 26 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 27 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 25))))
              24
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.ls 27))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                26 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
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
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                25 (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24 Flapjack.Spt.ln))))))))
def optimized755 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(755, 5, optimizedBody755_152)
end InitECandidate.Proofs.SmallStages.Oracles755
