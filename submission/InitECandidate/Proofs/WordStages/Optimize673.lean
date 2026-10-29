import InitECandidate.Proofs.WordStages.Optimize657
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source673
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody673_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody673_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody673_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody673_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (14, 8), (46, 4), (10, 10), (0, 2), (18, 6)]

def optimizedBody673_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody673_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody673_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody673_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody673_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 18)))

def optimizedBody673_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody673_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (50, 10), (18, 18)]

def optimizedBody673_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.reg 12)))

def optimizedBody673_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody673_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12), (50, 50), (54, 18)]

def optimizedBody673_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody673_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12), (50, 50), (54, 54)]

def optimizedBody673_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody673_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12), (50, 50)]

def optimizedBody673_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody673_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody673_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (50, 50), (14, 14)]

def optimizedBody673_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody673_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody673_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (50, 50), (48, 14)]

def optimizedBody673_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody673_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (50, 50), (48, 48)]

def optimizedBody673_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody673_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 48), (48, 46), (50, 50),
    (52, 0), (54, 54)]

def optimizedBody673_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (4, 4), (6, 6), (8, 8), (20, 44), (14, 46), (12, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody673_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (20, 44), (14, 46), (12, 48), (16, 50), (0, 52), (18, 54)]

def optimizedBody673_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody673_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_29 optimizedBody673_30

def optimizedBody673_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody673_28, 673, 2)) (some 659) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody673_31, 673, 3))

def optimizedBody673_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody673_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody673_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody673_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody673_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody673_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody673_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody673_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody673_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody673_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody673_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody673_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody673_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody673_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 20), (14, 14), (46, 12), (10, 10), (0, 0), (18, 18)]

def optimizedBody673_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody673_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_46 optimizedBody673_47

def optimizedBody673_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_45 optimizedBody673_48

def optimizedBody673_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_33 optimizedBody673_49

def optimizedBody673_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_44 optimizedBody673_50

def optimizedBody673_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_43 optimizedBody673_51

def optimizedBody673_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_42 optimizedBody673_52

def optimizedBody673_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_41 optimizedBody673_53

def optimizedBody673_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_40 optimizedBody673_54

def optimizedBody673_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_39 optimizedBody673_55

def optimizedBody673_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_38 optimizedBody673_56

def optimizedBody673_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_37 optimizedBody673_57

def optimizedBody673_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_36 optimizedBody673_58

def optimizedBody673_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_35 optimizedBody673_59

def optimizedBody673_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_34 optimizedBody673_60

def optimizedBody673_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_33 optimizedBody673_61

def optimizedBody673_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_2 optimizedBody673_62

def optimizedBody673_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_32 optimizedBody673_63

def optimizedBody673_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_27 optimizedBody673_64

def optimizedBody673_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_26 optimizedBody673_65

def optimizedBody673_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_25 optimizedBody673_66

def optimizedBody673_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_24 optimizedBody673_67

def optimizedBody673_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_23 optimizedBody673_68

def optimizedBody673_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_22 optimizedBody673_69

def optimizedBody673_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_21 optimizedBody673_70

def optimizedBody673_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_20 optimizedBody673_71

def optimizedBody673_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_19 optimizedBody673_72

def optimizedBody673_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_18 optimizedBody673_73

def optimizedBody673_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_17 optimizedBody673_74

def optimizedBody673_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_16 optimizedBody673_75

def optimizedBody673_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_15 optimizedBody673_76

def optimizedBody673_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_14 optimizedBody673_77

def optimizedBody673_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_13 optimizedBody673_78

def optimizedBody673_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_12 optimizedBody673_79

def optimizedBody673_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_11 optimizedBody673_80

def optimizedBody673_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_10 optimizedBody673_81

def optimizedBody673_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_9 optimizedBody673_82

def optimizedBody673_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_8 optimizedBody673_83

def optimizedBody673_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_7 optimizedBody673_84

def optimizedBody673_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_6 optimizedBody673_85

def optimizedBody673_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_5 optimizedBody673_86

def optimizedBody673_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_2 optimizedBody673_87

def optimizedBody673_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody673_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_2 optimizedBody673_89

def optimizedBody673_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 0) optimizedBody673_88 optimizedBody673_90

def optimizedBody673_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (14, 14), (46, 4), (10, 10), (0, 0), (18, 18)]

def optimizedBody673_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_2 optimizedBody673_92

def optimizedBody673_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_91 optimizedBody673_93

def optimizedBody673_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_4 optimizedBody673_94

def optimizedBody673_96 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody673_95 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody673_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody673_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody673_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody673_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_98 optimizedBody673_99

def optimizedBody673_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_97 optimizedBody673_100

def optimizedBody673_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_2 optimizedBody673_101

def optimizedBody673_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_96 optimizedBody673_102

def optimizedBody673_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_3 optimizedBody673_103

def optimizedBody673_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_2 optimizedBody673_104

def optimizedBody673_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_1 optimizedBody673_105

def optimizedBody673_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody673_0 optimizedBody673_106

def oracle673 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 Flapjack.Spt.ln) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 6)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 9 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 27 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 (Flapjack.Spt.ls 10)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 9 (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 24))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.ls 7)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 8 (Flapjack.Spt.ls 9)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln) 4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 25)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 24 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 8)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 (Flapjack.Spt.ls 7)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))))
def optimized673 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(673, 5, optimizedBody673_107)
theorem optimize673_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source673, oracle673) = optimized673 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize673_eq
end InitECandidate.Proofs.WordStages
