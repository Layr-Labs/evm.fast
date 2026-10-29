import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source854
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles854
def optimizedBody854_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody854_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody854_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 4)]

def optimizedBody854_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody854_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody854_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody854_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody854_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody854_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 0), (8, 8), (4, 4), (48, 6), (10, 10), (44, 2), (12, 12)]

def optimizedBody854_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody854_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody854_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody854_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody854_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody854_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody854_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def optimizedBody854_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody854_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody854_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody854_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody854_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 0), (48, 8), (50, 2), (52, 14), (54, 48), (56, 10), (58, 44), (60, 12)]

def optimizedBody854_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (10, 44), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60)]

def optimizedBody854_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (10, 44), (48, 48), (0, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60)]

def optimizedBody854_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody854_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_22 optimizedBody854_23

def optimizedBody854_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody854_21, 854, 2)) (some 176) ([2, 4, 6]) (some (2, optimizedBody854_24, 854, 3))

def optimizedBody854_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody854_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody854_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody854_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody854_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody854_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (44, 10), (48, 48), (62, 2), (50, 50), (52, 52), (8, 8), (54, 54), (56, 56), (58, 58), (0, 0), (6, 6),
    (60, 2), (4, 4)]

def optimizedBody854_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody854_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody854_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody854_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44)]

def optimizedBody854_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody854_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody854_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody854_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 10), (48, 48), (62, 62), (50, 50), (52, 52), (54, 8), (56, 54), (58, 56),
    (60, 58), (64, 0), (66, 60), (68, 2)]

def optimizedBody854_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (46, 46), (44, 44), (48, 48), (10, 62), (50, 50), (52, 52), (8, 54), (54, 56), (56, 58), (58, 60), (0, 64),
    (12, 66), (4, 68)]

def optimizedBody854_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (10, 62), (50, 50), (52, 52), (8, 54), (54, 56), (56, 58), (58, 60), (0, 64),
    (12, 66), (4, 68)]

def optimizedBody854_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_41 optimizedBody854_23

def optimizedBody854_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody854_40, 854, 4)) (some 176) ([2, 4, 6]) (some (2, optimizedBody854_42, 854, 5))

def optimizedBody854_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody854_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody854_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody854_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody854_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (44, 44), (48, 48), (62, 10), (50, 50), (52, 52), (8, 8), (54, 54), (56, 56), (58, 58), (0, 0), (6, 6),
    (60, 12), (4, 4)]

def optimizedBody854_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody854_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_48 optimizedBody854_49

def optimizedBody854_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_47 optimizedBody854_50

def optimizedBody854_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_46 optimizedBody854_51

def optimizedBody854_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_45 optimizedBody854_52

def optimizedBody854_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_44 optimizedBody854_53

def optimizedBody854_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_54

def optimizedBody854_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_43 optimizedBody854_55

def optimizedBody854_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_39 optimizedBody854_56

def optimizedBody854_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_38 optimizedBody854_57

def optimizedBody854_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_37 optimizedBody854_58

def optimizedBody854_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_36 optimizedBody854_59

def optimizedBody854_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_35 optimizedBody854_60

def optimizedBody854_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_34 optimizedBody854_61

def optimizedBody854_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_33 optimizedBody854_62

def optimizedBody854_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_63

def optimizedBody854_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody854_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_65

def optimizedBody854_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 8) optimizedBody854_64 optimizedBody854_66

def optimizedBody854_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (44, 10), (48, 12), (62, 14), (50, 16), (52, 18), (8, 8), (54, 20), (56, 22), (58, 24), (0, 0), (6, 6),
    (60, 26), (4, 4)]

def optimizedBody854_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_68

def optimizedBody854_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_67 optimizedBody854_69

def optimizedBody854_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_32 optimizedBody854_70

def optimizedBody854_72 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody854_71 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody854_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 60), (4, 4), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody854_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (46, 46), (0, 44), (44, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60)]

def optimizedBody854_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (44, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60)]

def optimizedBody854_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_75 optimizedBody854_23

def optimizedBody854_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody854_74, 854, 6)) (some 852) ([2, 4]) (some (2, optimizedBody854_76, 854, 7))

def optimizedBody854_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody854_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody854_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody854_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody854_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody854_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 44), (48, 2), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody854_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (4, 48), (6, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody854_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48), (6, 50), (50, 52), (52, 54), (54, 56), (56, 58)]

def optimizedBody854_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_85 optimizedBody854_23

def optimizedBody854_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody854_84, 854, 8)) (some 176) ([2, 4, 6]) (some (2, optimizedBody854_86, 854, 9))

def optimizedBody854_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody854_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody854_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (46, 46), (44, 44), (48, 6), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody854_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (0, 44), (6, 48), (14, 50), (10, 52), (16, 54), (12, 56)]

def optimizedBody854_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (6, 48), (14, 50), (10, 52), (16, 54), (12, 56)]

def optimizedBody854_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_92 optimizedBody854_23

def optimizedBody854_94 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody854_91, 854, 10)) (some 852) ([2, 4]) (some (2, optimizedBody854_93, 854, 11))

def optimizedBody854_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody854_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (8, 8), (4, 4), (48, 14), (10, 10), (44, 16), (12, 12)]

def optimizedBody854_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_96 optimizedBody854_49

def optimizedBody854_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_95 optimizedBody854_97

def optimizedBody854_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_46 optimizedBody854_98

def optimizedBody854_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_37 optimizedBody854_99

def optimizedBody854_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_78 optimizedBody854_100

def optimizedBody854_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_101

def optimizedBody854_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_94 optimizedBody854_102

def optimizedBody854_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_90 optimizedBody854_103

def optimizedBody854_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_89 optimizedBody854_104

def optimizedBody854_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_88 optimizedBody854_105

def optimizedBody854_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_106

def optimizedBody854_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_87 optimizedBody854_107

def optimizedBody854_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_83 optimizedBody854_108

def optimizedBody854_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_82 optimizedBody854_109

def optimizedBody854_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_81 optimizedBody854_110

def optimizedBody854_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_80 optimizedBody854_111

def optimizedBody854_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_17 optimizedBody854_112

def optimizedBody854_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_79 optimizedBody854_113

def optimizedBody854_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_78 optimizedBody854_114

def optimizedBody854_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_115

def optimizedBody854_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_77 optimizedBody854_116

def optimizedBody854_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_73 optimizedBody854_117

def optimizedBody854_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_118

def optimizedBody854_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_72 optimizedBody854_119

def optimizedBody854_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_31 optimizedBody854_120

def optimizedBody854_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_121

def optimizedBody854_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_30 optimizedBody854_122

def optimizedBody854_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_29 optimizedBody854_123

def optimizedBody854_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_28 optimizedBody854_124

def optimizedBody854_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_5 optimizedBody854_125

def optimizedBody854_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_4 optimizedBody854_126

def optimizedBody854_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_27 optimizedBody854_127

def optimizedBody854_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_26 optimizedBody854_128

def optimizedBody854_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_129

def optimizedBody854_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_25 optimizedBody854_130

def optimizedBody854_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_20 optimizedBody854_131

def optimizedBody854_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_19 optimizedBody854_132

def optimizedBody854_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_18 optimizedBody854_133

def optimizedBody854_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_17 optimizedBody854_134

def optimizedBody854_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_16 optimizedBody854_135

def optimizedBody854_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_15 optimizedBody854_136

def optimizedBody854_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_14 optimizedBody854_137

def optimizedBody854_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_13 optimizedBody854_138

def optimizedBody854_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_12 optimizedBody854_139

def optimizedBody854_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_11 optimizedBody854_140

def optimizedBody854_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_10 optimizedBody854_141

def optimizedBody854_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_142

def optimizedBody854_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 10) optimizedBody854_143 optimizedBody854_66

def optimizedBody854_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (8, 8), (4, 4), (48, 2), (10, 10), (44, 6), (12, 12)]

def optimizedBody854_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_145

def optimizedBody854_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_144 optimizedBody854_146

def optimizedBody854_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_9 optimizedBody854_147

def optimizedBody854_149 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody854_148 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody854_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46)]

def optimizedBody854_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody854_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody854_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_152 optimizedBody854_23

def optimizedBody854_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody854_151, 854, 12)) (some 852) ([2, 4]) (some (2, optimizedBody854_153, 854, 13))

def optimizedBody854_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody854_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody854_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_155 optimizedBody854_156

def optimizedBody854_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_157

def optimizedBody854_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_154 optimizedBody854_158

def optimizedBody854_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_150 optimizedBody854_159

def optimizedBody854_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_160

def optimizedBody854_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_149 optimizedBody854_161

def optimizedBody854_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_8 optimizedBody854_162

def optimizedBody854_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_7 optimizedBody854_163

def optimizedBody854_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_6 optimizedBody854_164

def optimizedBody854_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_5 optimizedBody854_165

def optimizedBody854_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_4 optimizedBody854_166

def optimizedBody854_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_3 optimizedBody854_167

def optimizedBody854_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_2 optimizedBody854_168

def optimizedBody854_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_1 optimizedBody854_169

def optimizedBody854_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody854_0 optimizedBody854_170

def oracle854 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln)))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.ls 28)) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10)))
                24 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 7))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 4 (Flapjack.Spt.ls 3)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 28 (Flapjack.Spt.ls 12)))
                4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 3)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 9)))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 2)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 27 (Flapjack.Spt.ls 2)) 29
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 27)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 29 (Flapjack.Spt.ls 11)))
                2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8))) 6
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 2))))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)) 27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 6)))
                5
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 (Flapjack.Spt.ls 0)))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 29)) 24
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
                5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 31 Flapjack.Spt.ln)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 5)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 29)) 24 Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 27)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 30 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 28)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 27 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 29 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30)) 25 Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))))
def optimized854 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(854, 3, optimizedBody854_171)
end InitECandidate.Proofs.SmallStages.Oracles854
