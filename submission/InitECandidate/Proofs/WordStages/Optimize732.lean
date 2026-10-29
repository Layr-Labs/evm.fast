import InitECandidate.Proofs.WordStages.Optimize716
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source732
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody732_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody732_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody732_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody732_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody732_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody732_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody732_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody732_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody732_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody732_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody732_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody732_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody732_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 2 80#64))

def optimizedBody732_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody732_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (2, 2)]

def optimizedBody732_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 24)))

def optimizedBody732_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody732_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 22)))

def optimizedBody732_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody732_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 20)))

def optimizedBody732_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody732_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 16)))

def optimizedBody732_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody732_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody732_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody732_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody732_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody732_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody732_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody732_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody732_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody732_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody732_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody732_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody732_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody732_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody732_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody732_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody732_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody732_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody732_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_39

def optimizedBody732_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_38 optimizedBody732_40

def optimizedBody732_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_37 optimizedBody732_41

def optimizedBody732_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody732_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody732_42 optimizedBody732_43

def optimizedBody732_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody732_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_45 optimizedBody732_40

def optimizedBody732_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_37 optimizedBody732_46

def optimizedBody732_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_37 optimizedBody732_47

def optimizedBody732_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_44 optimizedBody732_48

def optimizedBody732_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_36 optimizedBody732_49

def optimizedBody732_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_35 optimizedBody732_50

def optimizedBody732_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_34 optimizedBody732_51

def optimizedBody732_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_33 optimizedBody732_52

def optimizedBody732_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_32 optimizedBody732_53

def optimizedBody732_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_31 optimizedBody732_54

def optimizedBody732_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_30 optimizedBody732_55

def optimizedBody732_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_29 optimizedBody732_56

def optimizedBody732_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_28 optimizedBody732_57

def optimizedBody732_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_27 optimizedBody732_58

def optimizedBody732_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_26 optimizedBody732_59

def optimizedBody732_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_25 optimizedBody732_60

def optimizedBody732_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_24 optimizedBody732_61

def optimizedBody732_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_23 optimizedBody732_62

def optimizedBody732_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_22 optimizedBody732_63

def optimizedBody732_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_21 optimizedBody732_64

def optimizedBody732_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_20 optimizedBody732_65

def optimizedBody732_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_19 optimizedBody732_66

def optimizedBody732_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_18 optimizedBody732_67

def optimizedBody732_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_17 optimizedBody732_68

def optimizedBody732_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_16 optimizedBody732_69

def optimizedBody732_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_15 optimizedBody732_70

def optimizedBody732_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_14 optimizedBody732_71

def optimizedBody732_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_13 optimizedBody732_72

def optimizedBody732_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_73

def optimizedBody732_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_12 optimizedBody732_74

def optimizedBody732_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_75

def optimizedBody732_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_11 optimizedBody732_76

def optimizedBody732_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_77

def optimizedBody732_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_10 optimizedBody732_78

def optimizedBody732_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_79

def optimizedBody732_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_9 optimizedBody732_80

def optimizedBody732_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_81

def optimizedBody732_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_8 optimizedBody732_82

def optimizedBody732_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_83

def optimizedBody732_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_7 optimizedBody732_84

def optimizedBody732_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_85

def optimizedBody732_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_6 optimizedBody732_86

def optimizedBody732_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_87

def optimizedBody732_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_5 optimizedBody732_88

def optimizedBody732_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_89

def optimizedBody732_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_4 optimizedBody732_90

def optimizedBody732_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_91

def optimizedBody732_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_3 optimizedBody732_92

def optimizedBody732_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_2 optimizedBody732_93

def optimizedBody732_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_1 optimizedBody732_94

def optimizedBody732_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody732_0 optimizedBody732_95

def oracle732 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 7)) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 (Flapjack.Spt.ls 11)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 8))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 9)) 6
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 12)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 9 (Flapjack.Spt.ls 10))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 12)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))))
      Flapjack.Spt.ln))
def optimized732 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(732, 2, optimizedBody732_96)
theorem optimize732_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source732, oracle732) = optimized732 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize732_eq
end InitECandidate.Proofs.WordStages
