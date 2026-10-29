import InitECandidate.Proofs.WordStages.Optimize831
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source847
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody847_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (52, 6)]

def optimizedBody847_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (0, 44), (48, 48), (52, 52)]

def optimizedBody847_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (48, 48), (52, 52)]

def optimizedBody847_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody847_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_2 optimizedBody847_3

def optimizedBody847_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody847_1, 847, 2)) (some 69) ([]) (some (2, optimizedBody847_4, 847, 3))

def optimizedBody847_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody847_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody847_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody847_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody847_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 4), (52, 52)]

def optimizedBody847_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody847_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody847_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_12 optimizedBody847_3

def optimizedBody847_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody847_11, 847, 4)) (some 68) ([2]) (some (2, optimizedBody847_13, 847, 5))

def optimizedBody847_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody847_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 0), (4, 4), (10, 10), (48, 48), (44, 44), (8, 8)]

def optimizedBody847_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody847_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody847_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody847_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody847_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody847_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody847_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (50, 4), (8, 8)]

def optimizedBody847_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody847_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody847_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody847_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody847_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 0), (48, 50), (50, 10), (52, 48), (54, 44), (56, 8)]

def optimizedBody847_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 48), (10, 50), (48, 52), (12, 54), (6, 56)]

def optimizedBody847_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (10, 50), (48, 52), (12, 54), (6, 56)]

def optimizedBody847_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_30 optimizedBody847_3

def optimizedBody847_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody847_29, 847, 6)) (some 153) ([2, 4, 6]) (some (2, optimizedBody847_31, 847, 7))

def optimizedBody847_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody847_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody847_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (0, 0), (4, 4), (10, 10), (48, 48), (44, 12), (8, 8)]

def optimizedBody847_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody847_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_35 optimizedBody847_36

def optimizedBody847_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_34 optimizedBody847_37

def optimizedBody847_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_33 optimizedBody847_38

def optimizedBody847_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_39

def optimizedBody847_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_32 optimizedBody847_40

def optimizedBody847_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_28 optimizedBody847_41

def optimizedBody847_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_27 optimizedBody847_42

def optimizedBody847_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_26 optimizedBody847_43

def optimizedBody847_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_25 optimizedBody847_44

def optimizedBody847_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_18 optimizedBody847_45

def optimizedBody847_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_24 optimizedBody847_46

def optimizedBody847_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_23 optimizedBody847_47

def optimizedBody847_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_22 optimizedBody847_48

def optimizedBody847_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_21 optimizedBody847_49

def optimizedBody847_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_20 optimizedBody847_50

def optimizedBody847_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_19 optimizedBody847_51

def optimizedBody847_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_18 optimizedBody847_52

def optimizedBody847_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_53

def optimizedBody847_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody847_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody847_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_55 optimizedBody847_56

def optimizedBody847_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_57

def optimizedBody847_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody847_54 optimizedBody847_58

def optimizedBody847_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (0, 0), (4, 4), (10, 10), (48, 6), (44, 12), (8, 8)]

def optimizedBody847_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_60

def optimizedBody847_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_59 optimizedBody847_61

def optimizedBody847_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_17 optimizedBody847_62

def optimizedBody847_64 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody847_63 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody847_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 10)]

def optimizedBody847_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody847_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 44), (44, 46), (46, 48)]

def optimizedBody847_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody847_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody847_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_69 optimizedBody847_3

def optimizedBody847_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody847_68, 847, 8)) (some 153) ([2, 4, 6]) (some (2, optimizedBody847_70, 847, 9))

def optimizedBody847_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody847_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody847_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody847_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_74 optimizedBody847_3

def optimizedBody847_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody847_73, 847, 10)) (some 70) ([2]) (some (2, optimizedBody847_75, 847, 11))

def optimizedBody847_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody847_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody847_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody847_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_78 optimizedBody847_79

def optimizedBody847_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_77 optimizedBody847_80

def optimizedBody847_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_81

def optimizedBody847_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_76 optimizedBody847_82

def optimizedBody847_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_72 optimizedBody847_83

def optimizedBody847_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_84

def optimizedBody847_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_71 optimizedBody847_85

def optimizedBody847_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_67 optimizedBody847_86

def optimizedBody847_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_66 optimizedBody847_87

def optimizedBody847_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_65 optimizedBody847_88

def optimizedBody847_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_89

def optimizedBody847_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_64 optimizedBody847_90

def optimizedBody847_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_16 optimizedBody847_91

def optimizedBody847_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_92

def optimizedBody847_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_15 optimizedBody847_93

def optimizedBody847_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_94

def optimizedBody847_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_14 optimizedBody847_95

def optimizedBody847_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_10 optimizedBody847_96

def optimizedBody847_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_9 optimizedBody847_97

def optimizedBody847_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_8 optimizedBody847_98

def optimizedBody847_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_7 optimizedBody847_99

def optimizedBody847_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_100

def optimizedBody847_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_5 optimizedBody847_101

def optimizedBody847_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_0 optimizedBody847_102

def oracle847 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 24)))
              23
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 4)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 3)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              Flapjack.Spt.ln))))))
def optimized847 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(847, 4, optimizedBody847_103)
theorem optimize847_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source847, oracle847) = optimized847 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize847_eq
end InitECandidate.Proofs.WordStages
