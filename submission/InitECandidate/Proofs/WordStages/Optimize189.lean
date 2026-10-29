import InitECandidate.Proofs.WordStages.Optimize173
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source189
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody189_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2), (52, 6)]

def optimizedBody189_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (8, 48), (52, 52)]

def optimizedBody189_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (8, 48), (52, 52)]

def optimizedBody189_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody189_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_2 optimizedBody189_3

def optimizedBody189_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody189_1, 189, 2)) (some 188) ([2]) (some (2, optimizedBody189_4, 189, 3))

def optimizedBody189_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody189_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody189_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody189_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody189_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (50, 0)]

def optimizedBody189_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody189_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody189_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody189_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody189_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (6, 12), (44, 44), (46, 12), (48, 8), (50, 50), (52, 52)]

def optimizedBody189_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 44), (0, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody189_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46), (4, 48), (6, 50), (8, 52)]

def optimizedBody189_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_17 optimizedBody189_3

def optimizedBody189_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody189_16, 189, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody189_18, 189, 5))

def optimizedBody189_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody189_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody189_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody189_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody189_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody189_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody189_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody189_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody189_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody189_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody189_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody189_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody189_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody189_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody189_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody189_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody189_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody189_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody189_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody189_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody189_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody189_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody189_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody189_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody189_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody189_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody189_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody189_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody189_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_46 optimizedBody189_47

def optimizedBody189_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_38 optimizedBody189_48

def optimizedBody189_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_37 optimizedBody189_49

def optimizedBody189_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_45 optimizedBody189_50

def optimizedBody189_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_7 optimizedBody189_51

def optimizedBody189_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_44 optimizedBody189_52

def optimizedBody189_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_20 optimizedBody189_53

def optimizedBody189_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_43 optimizedBody189_54

def optimizedBody189_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_42 optimizedBody189_55

def optimizedBody189_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_41 optimizedBody189_56

def optimizedBody189_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_40 optimizedBody189_57

def optimizedBody189_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_20 optimizedBody189_58

def optimizedBody189_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_39 optimizedBody189_59

def optimizedBody189_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_7 optimizedBody189_60

def optimizedBody189_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_38 optimizedBody189_61

def optimizedBody189_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_37 optimizedBody189_62

def optimizedBody189_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_36 optimizedBody189_63

def optimizedBody189_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_35 optimizedBody189_64

def optimizedBody189_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_34 optimizedBody189_65

def optimizedBody189_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_28 optimizedBody189_66

def optimizedBody189_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_31 optimizedBody189_67

def optimizedBody189_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_30 optimizedBody189_68

def optimizedBody189_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_33 optimizedBody189_69

def optimizedBody189_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_28 optimizedBody189_70

def optimizedBody189_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_32 optimizedBody189_71

def optimizedBody189_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_20 optimizedBody189_72

def optimizedBody189_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_31 optimizedBody189_73

def optimizedBody189_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_30 optimizedBody189_74

def optimizedBody189_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_29 optimizedBody189_75

def optimizedBody189_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_28 optimizedBody189_76

def optimizedBody189_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_27 optimizedBody189_77

def optimizedBody189_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_24 optimizedBody189_78

def optimizedBody189_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_26 optimizedBody189_79

def optimizedBody189_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_25 optimizedBody189_80

def optimizedBody189_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_24 optimizedBody189_81

def optimizedBody189_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_23 optimizedBody189_82

def optimizedBody189_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_22 optimizedBody189_83

def optimizedBody189_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_21 optimizedBody189_84

def optimizedBody189_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_20 optimizedBody189_85

def optimizedBody189_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_6 optimizedBody189_86

def optimizedBody189_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_19 optimizedBody189_87

def optimizedBody189_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_15 optimizedBody189_88

def optimizedBody189_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_14 optimizedBody189_89

def optimizedBody189_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_13 optimizedBody189_90

def optimizedBody189_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_12 optimizedBody189_91

def optimizedBody189_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_11 optimizedBody189_92

def optimizedBody189_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_10 optimizedBody189_93

def optimizedBody189_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_9 optimizedBody189_94

def optimizedBody189_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_7 optimizedBody189_95

def optimizedBody189_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_8 optimizedBody189_96

def optimizedBody189_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_7 optimizedBody189_97

def optimizedBody189_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_6 optimizedBody189_98

def optimizedBody189_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_5 optimizedBody189_99

def optimizedBody189_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody189_0 optimizedBody189_100

def oracle189 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 6 Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 26
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 4 Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def optimized189 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(189, 4, optimizedBody189_101)
theorem optimize189_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source189, oracle189) = optimized189 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize189_eq
end InitECandidate.Proofs.WordStages
