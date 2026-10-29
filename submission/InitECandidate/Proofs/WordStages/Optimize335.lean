import InitECandidate.Proofs.WordStages.Optimize319
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source335
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody335_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody335_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody335_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody335_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody335_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody335_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody335_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody335_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody335_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 2), (10, 44), (0, 46)]

def optimizedBody335_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody335_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody335_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_9 optimizedBody335_10

def optimizedBody335_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody335_8, 335, 2)) (some 161) ([2, 4]) (some (2, optimizedBody335_11, 335, 3))

def optimizedBody335_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody335_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody335_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody335_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody335_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody335_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody335_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody335_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_19 optimizedBody335_10

def optimizedBody335_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_18 optimizedBody335_20

def optimizedBody335_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_17 optimizedBody335_21

def optimizedBody335_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_2 optimizedBody335_22

def optimizedBody335_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_16 optimizedBody335_23

def optimizedBody335_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_24

def optimizedBody335_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody335_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody335_25 optimizedBody335_26

def optimizedBody335_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody335_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody335_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody335_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def optimizedBody335_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_31 optimizedBody335_23

def optimizedBody335_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_32

def optimizedBody335_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody335_33 optimizedBody335_26

def optimizedBody335_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody335_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_35

def optimizedBody335_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_36

def optimizedBody335_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_34 optimizedBody335_37

def optimizedBody335_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_30 optimizedBody335_38

def optimizedBody335_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_2 optimizedBody335_39

def optimizedBody335_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_29 optimizedBody335_40

def optimizedBody335_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_5 optimizedBody335_41

def optimizedBody335_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_42

def optimizedBody335_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody335_43 optimizedBody335_36

def optimizedBody335_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody335_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody335_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 12#64)

def optimizedBody335_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody335_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_48 optimizedBody335_21

def optimizedBody335_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_45 optimizedBody335_49

def optimizedBody335_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_47 optimizedBody335_50

def optimizedBody335_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_51

def optimizedBody335_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody335_52 optimizedBody335_26

def optimizedBody335_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody335_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_54

def optimizedBody335_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_55

def optimizedBody335_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_53 optimizedBody335_56

def optimizedBody335_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_46 optimizedBody335_57

def optimizedBody335_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_58

def optimizedBody335_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody335_59 optimizedBody335_55

def optimizedBody335_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (4, 6)]

def optimizedBody335_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody335_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_61 optimizedBody335_62

def optimizedBody335_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_63

def optimizedBody335_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_60 optimizedBody335_64

def optimizedBody335_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_15 optimizedBody335_65

def optimizedBody335_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_45 optimizedBody335_66

def optimizedBody335_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_67

def optimizedBody335_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_44 optimizedBody335_68

def optimizedBody335_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_28 optimizedBody335_69

def optimizedBody335_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_15 optimizedBody335_70

def optimizedBody335_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_71

def optimizedBody335_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_72

def optimizedBody335_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_27 optimizedBody335_73

def optimizedBody335_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_15 optimizedBody335_74

def optimizedBody335_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_14 optimizedBody335_75

def optimizedBody335_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_13 optimizedBody335_76

def optimizedBody335_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_12 optimizedBody335_77

def optimizedBody335_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_7 optimizedBody335_78

def optimizedBody335_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_6 optimizedBody335_79

def optimizedBody335_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_5 optimizedBody335_80

def optimizedBody335_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_4 optimizedBody335_81

def optimizedBody335_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_3 optimizedBody335_82

def optimizedBody335_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_2 optimizedBody335_83

def optimizedBody335_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_1 optimizedBody335_84

def optimizedBody335_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody335_0 optimizedBody335_85

def oracle335 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized335 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(335, 4, optimizedBody335_86)
theorem optimize335_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source335, oracle335) = optimized335 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize335_eq
end InitECandidate.Proofs.WordStages
