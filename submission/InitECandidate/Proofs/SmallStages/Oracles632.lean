import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source632
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles632
def optimizedBody632_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody632_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody632_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody632_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (64, 4), (62, 6), (2, 2)]

def optimizedBody632_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 62)]

def optimizedBody632_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody632_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody632_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody632_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody632_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody632_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody632_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551288#64))

def optimizedBody632_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody632_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody632_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 64)]

def optimizedBody632_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody632_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (64, 8), (0, 0)]

def optimizedBody632_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody632_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody632_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (64, 64), (0, 0)]

def optimizedBody632_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 12 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody632_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody632_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody632_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody632_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody632_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody632_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody632_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody632_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody632_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody632_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody632_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody632_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody632_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody632_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody632_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody632_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(64, 64), (62, 0)]

def optimizedBody632_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody632_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_38 optimizedBody632_39

def optimizedBody632_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_37 optimizedBody632_40

def optimizedBody632_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_41

def optimizedBody632_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_36 optimizedBody632_42

def optimizedBody632_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_35 optimizedBody632_43

def optimizedBody632_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_34 optimizedBody632_44

def optimizedBody632_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_33 optimizedBody632_45

def optimizedBody632_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_32 optimizedBody632_46

def optimizedBody632_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_31 optimizedBody632_47

def optimizedBody632_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_30 optimizedBody632_48

def optimizedBody632_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_29 optimizedBody632_49

def optimizedBody632_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_28 optimizedBody632_50

def optimizedBody632_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_51

def optimizedBody632_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_26 optimizedBody632_52

def optimizedBody632_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_25 optimizedBody632_53

def optimizedBody632_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_24 optimizedBody632_54

def optimizedBody632_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_23 optimizedBody632_55

def optimizedBody632_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_20 optimizedBody632_56

def optimizedBody632_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_22 optimizedBody632_57

def optimizedBody632_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_21 optimizedBody632_58

def optimizedBody632_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_20 optimizedBody632_59

def optimizedBody632_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_19 optimizedBody632_60

def optimizedBody632_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_18 optimizedBody632_61

def optimizedBody632_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_17 optimizedBody632_62

def optimizedBody632_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_16 optimizedBody632_63

def optimizedBody632_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_15 optimizedBody632_64

def optimizedBody632_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_14 optimizedBody632_65

def optimizedBody632_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_13 optimizedBody632_66

def optimizedBody632_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_67

def optimizedBody632_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_12 optimizedBody632_68

def optimizedBody632_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_11 optimizedBody632_69

def optimizedBody632_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_10 optimizedBody632_70

def optimizedBody632_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_9 optimizedBody632_71

def optimizedBody632_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_8 optimizedBody632_72

def optimizedBody632_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_7 optimizedBody632_73

def optimizedBody632_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_74

def optimizedBody632_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_75

def optimizedBody632_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(62, 0)]

def optimizedBody632_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody632_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_77 optimizedBody632_78

def optimizedBody632_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_79

def optimizedBody632_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 4) optimizedBody632_76 optimizedBody632_80

def optimizedBody632_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(64, 0), (62, 4)]

def optimizedBody632_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_82

def optimizedBody632_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_81 optimizedBody632_83

def optimizedBody632_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_5 optimizedBody632_84

def optimizedBody632_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_4 optimizedBody632_85

def optimizedBody632_87 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln) optimizedBody632_86 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  Flapjack.Spt.ln)

def optimizedBody632_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody632_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody632_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody632_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody632_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody632_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody632_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 0), (12, 12), (46, 4), (50, 6), (48, 8)]

def optimizedBody632_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody632_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (52, 56), (46, 46), (0, 0), (64, 64), (62, 62), (6, 46), (54, 48), (60, 2), (56, 56), (50, 50), (48, 48),
    (12, 12), (58, 12), (4, 50)]

def optimizedBody632_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody632_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 80#64)

def optimizedBody632_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 12), (44, 44), (46, 52), (48, 46), (50, 2), (52, 64), (54, 62), (56, 6), (58, 54),
    (60, 60), (62, 56), (64, 50), (66, 48), (68, 12), (70, 58), (74, 4)]

def optimizedBody632_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (74, 74)]

def optimizedBody632_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (74, 74)]

def optimizedBody632_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody632_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_101 optimizedBody632_102

def optimizedBody632_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody632_100, 632, 2)) (some 629) ([2, 4, 6, 8]) (some (2, optimizedBody632_103, 632, 3))

def optimizedBody632_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 4), (74, 74)]

def optimizedBody632_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 2), (44, 44), (16, 46), (6, 48), (0, 50), (52, 52), (54, 54), (10, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (18, 66), (46, 68), (24, 70), (12, 72), (56, 74)]

def optimizedBody632_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (6, 48), (0, 50), (52, 52), (54, 54), (10, 56), (58, 58), (60, 60), (62, 62), (4, 64),
    (18, 66), (46, 68), (24, 70), (12, 72), (56, 74)]

def optimizedBody632_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_107 optimizedBody632_102

def optimizedBody632_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
  Flapjack.Spt.ln)), optimizedBody632_106, 632, 4)) (some 630) ([2]) (some (2, optimizedBody632_108, 632, 5))

def optimizedBody632_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (22, 22)]

def optimizedBody632_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 14 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody632_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody632_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody632_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody632_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20 2

def optimizedBody632_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 20 18446744073709551296#64))

def optimizedBody632_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody632_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody632_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody632_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody632_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 26)]

def optimizedBody632_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 28 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody632_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody632_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20)]

def optimizedBody632_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 20 18446744073709551288#64))

def optimizedBody632_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 20)))

def optimizedBody632_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody632_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 22 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody632_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody632_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 18)))

def optimizedBody632_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4294967295#64)

def optimizedBody632_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody632_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody632_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody632_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody632_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody632_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody632_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 26), (0, 0)]

def optimizedBody632_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody632_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (16, 16)]

def optimizedBody632_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 32#64)

def optimizedBody632_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody632_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody632_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 14 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (12, 12)]

def optimizedBody632_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody632_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4294967295#64)

def optimizedBody632_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.reg 2)))

def optimizedBody632_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (46, 46), (66, 16), (74, 2)]

def optimizedBody632_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 22#64)))

def optimizedBody632_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 10 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody632_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 74), (56, 56)]

def optimizedBody632_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 79#64)

def optimizedBody632_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody632_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 24), (44, 44), (46, 46), (48, 6), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 4), (66, 66), (68, 8), (72, 24), (74, 74)]

def optimizedBody632_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74)]

def optimizedBody632_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72), (74, 74)]

def optimizedBody632_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_164 optimizedBody632_102

def optimizedBody632_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
  Flapjack.Spt.ln)), optimizedBody632_163, 632, 6)) (some 629) ([2, 4, 6, 8]) (some (2, optimizedBody632_165, 632, 7))

def optimizedBody632_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 4), (72, 72), (74, 74)]

def optimizedBody632_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(38, 2), (44, 44), (30, 46), (16, 48), (8, 50), (28, 52), (26, 54), (6, 56), (10, 58), (24, 60), (12, 62), (18, 64),
    (22, 66), (20, 68), (0, 70), (14, 72), (4, 74)]

def optimizedBody632_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (30, 46), (16, 48), (8, 50), (28, 52), (26, 54), (6, 56), (10, 58), (24, 60), (12, 62), (18, 64),
    (22, 66), (20, 68), (0, 70), (14, 72), (4, 74)]

def optimizedBody632_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_169 optimizedBody632_102

def optimizedBody632_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
  Flapjack.Spt.ln)), optimizedBody632_168, 632, 8)) (some 631) ([2]) (some (2, optimizedBody632_170, 632, 9))

def optimizedBody632_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8), (38, 38)]

def optimizedBody632_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 36 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody632_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 36 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody632_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 32 Flapjack.WordStore.heapLength

def optimizedBody632_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 32 32 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody632_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 40 32

def optimizedBody632_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 40 18446744073709551296#64))

def optimizedBody632_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 34)))

def optimizedBody632_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody632_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 2 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody632_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 32 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody632_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 32)]

def optimizedBody632_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 42 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(40, 40)]

def optimizedBody632_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 40 (Flapjack.WordLangAddr.addr 40 18446744073709551288#64))

def optimizedBody632_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 40)))

def optimizedBody632_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 38 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody632_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody632_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36), (10, 2)]

def optimizedBody632_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 36 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody632_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody632_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(34, 34)]

def optimizedBody632_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 34)))

def optimizedBody632_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 32), (10, 10)]

def optimizedBody632_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 32 2 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody632_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 12)]

def optimizedBody632_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody632_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 32)))

def optimizedBody632_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 32), (0, 0)]

def optimizedBody632_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody632_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody632_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 16), (14, 14), (2, 2), (8, 8)]

def optimizedBody632_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 0 (Flapjack.WordRegImm.imm 22#64)))

def optimizedBody632_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody632_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody632_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8), (18, 18)]

def optimizedBody632_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody632_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (52, 30), (46, 18), (0, 0), (64, 28), (62, 26), (6, 6), (54, 2), (60, 24), (56, 14), (50, 8), (48, 22),
    (12, 20), (58, 12), (4, 4)]

def optimizedBody632_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_214 optimizedBody632_39

def optimizedBody632_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_213 optimizedBody632_215

def optimizedBody632_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_212 optimizedBody632_216

def optimizedBody632_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_211 optimizedBody632_217

def optimizedBody632_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_133 optimizedBody632_218

def optimizedBody632_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_205 optimizedBody632_219

def optimizedBody632_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_210 optimizedBody632_220

def optimizedBody632_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_221

def optimizedBody632_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_209 optimizedBody632_222

def optimizedBody632_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_208 optimizedBody632_223

def optimizedBody632_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_207 optimizedBody632_224

def optimizedBody632_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_151 optimizedBody632_225

def optimizedBody632_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_206 optimizedBody632_226

def optimizedBody632_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_191 optimizedBody632_227

def optimizedBody632_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_151 optimizedBody632_228

def optimizedBody632_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_205 optimizedBody632_229

def optimizedBody632_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_204 optimizedBody632_230

def optimizedBody632_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_203 optimizedBody632_231

def optimizedBody632_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_202 optimizedBody632_232

def optimizedBody632_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_146 optimizedBody632_233

def optimizedBody632_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_201 optimizedBody632_234

def optimizedBody632_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_200 optimizedBody632_235

def optimizedBody632_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_144 optimizedBody632_236

def optimizedBody632_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_199 optimizedBody632_237

def optimizedBody632_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_198 optimizedBody632_238

def optimizedBody632_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_141 optimizedBody632_239

def optimizedBody632_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_197 optimizedBody632_240

def optimizedBody632_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_139 optimizedBody632_241

def optimizedBody632_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_196 optimizedBody632_242

def optimizedBody632_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_195 optimizedBody632_243

def optimizedBody632_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_194 optimizedBody632_244

def optimizedBody632_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_193 optimizedBody632_245

def optimizedBody632_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_192 optimizedBody632_246

def optimizedBody632_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_191 optimizedBody632_247

def optimizedBody632_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_151 optimizedBody632_248

def optimizedBody632_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_190 optimizedBody632_249

def optimizedBody632_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_250

def optimizedBody632_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_189 optimizedBody632_251

def optimizedBody632_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_252

def optimizedBody632_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_188 optimizedBody632_253

def optimizedBody632_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_128 optimizedBody632_254

def optimizedBody632_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_187 optimizedBody632_255

def optimizedBody632_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_186 optimizedBody632_256

def optimizedBody632_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_185 optimizedBody632_257

def optimizedBody632_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_124 optimizedBody632_258

def optimizedBody632_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_123 optimizedBody632_259

def optimizedBody632_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_184 optimizedBody632_260

def optimizedBody632_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_183 optimizedBody632_261

def optimizedBody632_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_182 optimizedBody632_262

def optimizedBody632_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_181 optimizedBody632_263

def optimizedBody632_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_264

def optimizedBody632_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_180 optimizedBody632_265

def optimizedBody632_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_179 optimizedBody632_266

def optimizedBody632_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_178 optimizedBody632_267

def optimizedBody632_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_177 optimizedBody632_268

def optimizedBody632_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_176 optimizedBody632_269

def optimizedBody632_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_175 optimizedBody632_270

def optimizedBody632_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_124 optimizedBody632_271

def optimizedBody632_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_174 optimizedBody632_272

def optimizedBody632_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_173 optimizedBody632_273

def optimizedBody632_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_172 optimizedBody632_274

def optimizedBody632_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_275

def optimizedBody632_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_171 optimizedBody632_276

def optimizedBody632_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_167 optimizedBody632_277

def optimizedBody632_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_278

def optimizedBody632_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_166 optimizedBody632_279

def optimizedBody632_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_162 optimizedBody632_280

def optimizedBody632_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_161 optimizedBody632_281

def optimizedBody632_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_282

def optimizedBody632_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_160 optimizedBody632_283

def optimizedBody632_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_159 optimizedBody632_284

def optimizedBody632_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_158 optimizedBody632_285

def optimizedBody632_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_151 optimizedBody632_286

def optimizedBody632_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_157 optimizedBody632_287

def optimizedBody632_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_156 optimizedBody632_288

def optimizedBody632_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_289

def optimizedBody632_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_155 optimizedBody632_290

def optimizedBody632_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_154 optimizedBody632_291

def optimizedBody632_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_152 optimizedBody632_292

def optimizedBody632_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_151 optimizedBody632_293

def optimizedBody632_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_153 optimizedBody632_294

def optimizedBody632_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_152 optimizedBody632_295

def optimizedBody632_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_151 optimizedBody632_296

def optimizedBody632_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_150 optimizedBody632_297

def optimizedBody632_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_149 optimizedBody632_298

def optimizedBody632_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_148 optimizedBody632_299

def optimizedBody632_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_147 optimizedBody632_300

def optimizedBody632_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_146 optimizedBody632_301

def optimizedBody632_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_145 optimizedBody632_302

def optimizedBody632_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_303

def optimizedBody632_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_144 optimizedBody632_304

def optimizedBody632_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_143 optimizedBody632_305

def optimizedBody632_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_142 optimizedBody632_306

def optimizedBody632_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_141 optimizedBody632_307

def optimizedBody632_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_140 optimizedBody632_308

def optimizedBody632_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_139 optimizedBody632_309

def optimizedBody632_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_138 optimizedBody632_310

def optimizedBody632_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_137 optimizedBody632_311

def optimizedBody632_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_124 optimizedBody632_312

def optimizedBody632_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_136 optimizedBody632_313

def optimizedBody632_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_135 optimizedBody632_314

def optimizedBody632_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_134 optimizedBody632_315

def optimizedBody632_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_133 optimizedBody632_316

def optimizedBody632_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_132 optimizedBody632_317

def optimizedBody632_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_131 optimizedBody632_318

def optimizedBody632_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_130 optimizedBody632_319

def optimizedBody632_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_25 optimizedBody632_320

def optimizedBody632_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_129 optimizedBody632_321

def optimizedBody632_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_128 optimizedBody632_322

def optimizedBody632_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_127 optimizedBody632_323

def optimizedBody632_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_126 optimizedBody632_324

def optimizedBody632_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_125 optimizedBody632_325

def optimizedBody632_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_124 optimizedBody632_326

def optimizedBody632_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_123 optimizedBody632_327

def optimizedBody632_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_122 optimizedBody632_328

def optimizedBody632_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_121 optimizedBody632_329

def optimizedBody632_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_120 optimizedBody632_330

def optimizedBody632_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_119 optimizedBody632_331

def optimizedBody632_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_332

def optimizedBody632_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_118 optimizedBody632_333

def optimizedBody632_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_117 optimizedBody632_334

def optimizedBody632_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_116 optimizedBody632_335

def optimizedBody632_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_115 optimizedBody632_336

def optimizedBody632_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_114 optimizedBody632_337

def optimizedBody632_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_113 optimizedBody632_338

def optimizedBody632_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_112 optimizedBody632_339

def optimizedBody632_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_111 optimizedBody632_340

def optimizedBody632_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_110 optimizedBody632_341

def optimizedBody632_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_342

def optimizedBody632_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_109 optimizedBody632_343

def optimizedBody632_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_105 optimizedBody632_344

def optimizedBody632_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_345

def optimizedBody632_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_104 optimizedBody632_346

def optimizedBody632_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_99 optimizedBody632_347

def optimizedBody632_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_348

def optimizedBody632_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_78

def optimizedBody632_351 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 0) optimizedBody632_349 optimizedBody632_350

def optimizedBody632_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (52, 8), (46, 10), (0, 0), (64, 14), (62, 16), (6, 6), (54, 18), (60, 20), (56, 22), (50, 24), (48, 26),
    (12, 12), (58, 28), (4, 4)]

def optimizedBody632_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_352

def optimizedBody632_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_351 optimizedBody632_353

def optimizedBody632_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_98 optimizedBody632_354

def optimizedBody632_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_97 optimizedBody632_355

def optimizedBody632_357 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody632_356 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody632_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 60)]

def optimizedBody632_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody632_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody632_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody632_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody632_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody632_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (18, 58), (10, 10)]

def optimizedBody632_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 18 (Flapjack.WordRegImm.reg 6)))

def optimizedBody632_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody632_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 14)))

def optimizedBody632_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 4294967295#64)

def optimizedBody632_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 6 (Flapjack.WordRegImm.reg 14)))

def optimizedBody632_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody632_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody632_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody632_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 56)]

def optimizedBody632_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody632_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody632_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 16)))

def optimizedBody632_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 6 (Flapjack.WordRegImm.reg 12)))

def optimizedBody632_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6)]

def optimizedBody632_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody632_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody632_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 52), (12, 54)]

def optimizedBody632_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody632_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody632_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody632_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody632_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody632_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody632_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 48), (6, 50)]

def optimizedBody632_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody632_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4294967295#64)

def optimizedBody632_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody632_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody632_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody632_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody632_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 46)]

def optimizedBody632_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody632_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody632_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4294967295#64)

def optimizedBody632_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody632_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody632_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody632_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_401

def optimizedBody632_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_400 optimizedBody632_402

def optimizedBody632_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_393 optimizedBody632_403

def optimizedBody632_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_392 optimizedBody632_404

def optimizedBody632_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_399 optimizedBody632_405

def optimizedBody632_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_398 optimizedBody632_406

def optimizedBody632_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_397 optimizedBody632_407

def optimizedBody632_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_30 optimizedBody632_408

def optimizedBody632_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_396 optimizedBody632_409

def optimizedBody632_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_395 optimizedBody632_410

def optimizedBody632_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_394 optimizedBody632_411

def optimizedBody632_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_412

def optimizedBody632_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_393 optimizedBody632_413

def optimizedBody632_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_392 optimizedBody632_414

def optimizedBody632_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_391 optimizedBody632_415

def optimizedBody632_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_390 optimizedBody632_416

def optimizedBody632_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_389 optimizedBody632_417

def optimizedBody632_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_6 optimizedBody632_418

def optimizedBody632_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_374 optimizedBody632_419

def optimizedBody632_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_388 optimizedBody632_420

def optimizedBody632_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_387 optimizedBody632_421

def optimizedBody632_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_422

def optimizedBody632_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_386 optimizedBody632_423

def optimizedBody632_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_385 optimizedBody632_424

def optimizedBody632_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_384 optimizedBody632_425

def optimizedBody632_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_133 optimizedBody632_426

def optimizedBody632_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_383 optimizedBody632_427

def optimizedBody632_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_428

def optimizedBody632_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_382 optimizedBody632_429

def optimizedBody632_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_381 optimizedBody632_430

def optimizedBody632_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_380 optimizedBody632_431

def optimizedBody632_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_432

def optimizedBody632_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_379 optimizedBody632_433

def optimizedBody632_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_378 optimizedBody632_434

def optimizedBody632_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_377 optimizedBody632_435

def optimizedBody632_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_133 optimizedBody632_436

def optimizedBody632_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_376 optimizedBody632_437

def optimizedBody632_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_375 optimizedBody632_438

def optimizedBody632_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_374 optimizedBody632_439

def optimizedBody632_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_373 optimizedBody632_440

def optimizedBody632_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_372 optimizedBody632_441

def optimizedBody632_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_442

def optimizedBody632_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_371 optimizedBody632_443

def optimizedBody632_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_370 optimizedBody632_444

def optimizedBody632_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_369 optimizedBody632_445

def optimizedBody632_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_368 optimizedBody632_446

def optimizedBody632_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_367 optimizedBody632_447

def optimizedBody632_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_366 optimizedBody632_448

def optimizedBody632_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_365 optimizedBody632_449

def optimizedBody632_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_364 optimizedBody632_450

def optimizedBody632_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_363 optimizedBody632_451

def optimizedBody632_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_452

def optimizedBody632_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_362 optimizedBody632_453

def optimizedBody632_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_454

def optimizedBody632_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_361 optimizedBody632_455

def optimizedBody632_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_456

def optimizedBody632_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_360 optimizedBody632_457

def optimizedBody632_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_27 optimizedBody632_458

def optimizedBody632_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_359 optimizedBody632_459

def optimizedBody632_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_358 optimizedBody632_460

def optimizedBody632_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_461

def optimizedBody632_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_357 optimizedBody632_462

def optimizedBody632_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_96 optimizedBody632_463

def optimizedBody632_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_464

def optimizedBody632_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_95 optimizedBody632_465

def optimizedBody632_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_94 optimizedBody632_466

def optimizedBody632_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_93 optimizedBody632_467

def optimizedBody632_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_468

def optimizedBody632_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_92 optimizedBody632_469

def optimizedBody632_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_470

def optimizedBody632_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_91 optimizedBody632_471

def optimizedBody632_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_472

def optimizedBody632_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_90 optimizedBody632_473

def optimizedBody632_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_474

def optimizedBody632_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_89 optimizedBody632_475

def optimizedBody632_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_88 optimizedBody632_476

def optimizedBody632_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_477

def optimizedBody632_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_87 optimizedBody632_478

def optimizedBody632_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_3 optimizedBody632_479

def optimizedBody632_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_2 optimizedBody632_480

def optimizedBody632_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_1 optimizedBody632_481

def optimizedBody632_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody632_0 optimizedBody632_482

def oracle632 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.ls 16)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 8 (Flapjack.Spt.ls 4)) 6
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 22 Flapjack.Spt.ln))
                  5
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 13 (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 30)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 19)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 35 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.ls 4)) 32
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 29)))
                  32
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln) (Flapjack.Spt.ls 23)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 18)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 33)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.ls 3)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 26 Flapjack.Spt.ln))
                  32
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 31 Flapjack.Spt.ln)))
                31
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 (Flapjack.Spt.ls 21)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 11 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln) (Flapjack.Spt.ls 6)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 4)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 20)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 36)))
                  32
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 5)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 10 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 33 Flapjack.Spt.ln)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 19)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 4)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 31)))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 10 (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 37)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 2)))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 (Flapjack.Spt.ls 17)) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 23)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 11 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 37 (Flapjack.Spt.ls 17)) (Flapjack.Spt.ls 28)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 (Flapjack.Spt.ls 16)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.ls 4)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 37)))
                  6
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 Flapjack.Spt.ln))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 29)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 10 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 34 Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 16)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.ls 15))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 9)) 5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 32)))
                  4
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 13))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 Flapjack.Spt.ln)))
                32
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24)))
                  4
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln) (Flapjack.Spt.ls 12)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 9 (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 20)) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 14 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln))
                  6
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 32 Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 18)) (Flapjack.Spt.ls 31)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 37 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 4)) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 30)))
                  6
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 4)) 29
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 8 Flapjack.Spt.ln))
                  5
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 11))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 Flapjack.Spt.ln)))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 20)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))
                  0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 37))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) (Flapjack.Spt.ls 30))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) (Flapjack.Spt.ls 28)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 27))))))))))
def optimized632 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(632, 3, optimizedBody632_483)
end InitECandidate.Proofs.SmallStages.Oracles632
