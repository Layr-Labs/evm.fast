import InitECandidate.Proofs.WordStages.Optimize170
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source186
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody186_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody186_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (14, 44), (10, 46), (8, 48)]

def optimizedBody186_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (10, 46), (8, 48)]

def optimizedBody186_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody186_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_2 optimizedBody186_3

def optimizedBody186_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody186_1, 186, 2)) (some 185) ([2, 4]) (some (2, optimizedBody186_4, 186, 3))

def optimizedBody186_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody186_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody186_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody186_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody186_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody186_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4]

def optimizedBody186_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_10 optimizedBody186_11

def optimizedBody186_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_9 optimizedBody186_12

def optimizedBody186_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_8 optimizedBody186_13

def optimizedBody186_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_14

def optimizedBody186_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody186_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody186_15 optimizedBody186_16

def optimizedBody186_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody186_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody186_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody186_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody186_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (48, 0)]

def optimizedBody186_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody186_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody186_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody186_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (6, 12), (44, 14), (46, 8), (48, 48)]

def optimizedBody186_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody186_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody186_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_28 optimizedBody186_3

def optimizedBody186_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody186_27, 186, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody186_29, 186, 5))

def optimizedBody186_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody186_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody186_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_10 optimizedBody186_32

def optimizedBody186_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_9 optimizedBody186_33

def optimizedBody186_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_8 optimizedBody186_34

def optimizedBody186_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_35

def optimizedBody186_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody186_36 optimizedBody186_16

def optimizedBody186_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody186_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody186_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody186_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody186_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody186_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody186_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_43 optimizedBody186_33

def optimizedBody186_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_42 optimizedBody186_44

def optimizedBody186_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_41 optimizedBody186_45

def optimizedBody186_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_7 optimizedBody186_46

def optimizedBody186_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_40 optimizedBody186_47

def optimizedBody186_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_39 optimizedBody186_48

def optimizedBody186_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_38 optimizedBody186_49

def optimizedBody186_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_50

def optimizedBody186_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_51

def optimizedBody186_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_37 optimizedBody186_52

def optimizedBody186_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_8 optimizedBody186_53

def optimizedBody186_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_31 optimizedBody186_54

def optimizedBody186_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_55

def optimizedBody186_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_30 optimizedBody186_56

def optimizedBody186_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_26 optimizedBody186_57

def optimizedBody186_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_25 optimizedBody186_58

def optimizedBody186_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_24 optimizedBody186_59

def optimizedBody186_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_23 optimizedBody186_60

def optimizedBody186_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_22 optimizedBody186_61

def optimizedBody186_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_21 optimizedBody186_62

def optimizedBody186_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_18 optimizedBody186_63

def optimizedBody186_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_20 optimizedBody186_64

def optimizedBody186_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_18 optimizedBody186_65

def optimizedBody186_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_19 optimizedBody186_66

def optimizedBody186_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_18 optimizedBody186_67

def optimizedBody186_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_68

def optimizedBody186_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_69

def optimizedBody186_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_17 optimizedBody186_70

def optimizedBody186_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_8 optimizedBody186_71

def optimizedBody186_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_7 optimizedBody186_72

def optimizedBody186_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_6 optimizedBody186_73

def optimizedBody186_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_5 optimizedBody186_74

def optimizedBody186_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody186_0 optimizedBody186_75

def oracle186 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))
def optimized186 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(186, 3, optimizedBody186_76)
theorem optimize186_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source186, oracle186) = optimized186 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize186_eq
end InitECandidate.Proofs.WordStages
