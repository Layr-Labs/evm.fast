import InitECandidate.Proofs.WordStages.Optimize729
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source745
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody745_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (0, 0)]

def optimizedBody745_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody745_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody745_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody745_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody745_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody745_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody745_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody745_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 6), (48, 12), (50, 10), (52, 8), (54, 14), (56, 4),
    (58, 2)]

def optimizedBody745_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (16, 44), (6, 46), (12, 48), (10, 50), (8, 52), (46, 54), (4, 56), (14, 58)]

def optimizedBody745_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (6, 46), (12, 48), (10, 50), (8, 52), (46, 54), (4, 56), (14, 58)]

def optimizedBody745_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody745_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_10 optimizedBody745_11

def optimizedBody745_13 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody745_9, 745, 2)) (some 723) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody745_12, 745, 3))

def optimizedBody745_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody745_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody745_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody745_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody745_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody745_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_17 optimizedBody745_18

def optimizedBody745_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_16 optimizedBody745_19

def optimizedBody745_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_20

def optimizedBody745_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody745_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody745_21 optimizedBody745_22

def optimizedBody745_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 16), (46, 46)]

def optimizedBody745_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (12, 46)]

def optimizedBody745_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (12, 46)]

def optimizedBody745_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_26 optimizedBody745_11

def optimizedBody745_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody745_25, 745, 4)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody745_27, 745, 5))

def optimizedBody745_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody745_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody745_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody745_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_17 optimizedBody745_31

def optimizedBody745_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_30 optimizedBody745_32

def optimizedBody745_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_33

def optimizedBody745_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody745_34 optimizedBody745_22

def optimizedBody745_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody745_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody745_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody745_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 64#64))

def optimizedBody745_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody745_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody745_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody745_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody745_44 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 723) ([0, 2, 4, 6, 8, 10, 12]) (none)

def optimizedBody745_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_43 optimizedBody745_44

def optimizedBody745_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_42 optimizedBody745_45

def optimizedBody745_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_46

def optimizedBody745_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_41 optimizedBody745_47

def optimizedBody745_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_48

def optimizedBody745_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_40 optimizedBody745_49

def optimizedBody745_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_50

def optimizedBody745_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_39 optimizedBody745_51

def optimizedBody745_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_52

def optimizedBody745_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_38 optimizedBody745_53

def optimizedBody745_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_54

def optimizedBody745_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_37 optimizedBody745_55

def optimizedBody745_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_56

def optimizedBody745_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_57

def optimizedBody745_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_58

def optimizedBody745_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_35 optimizedBody745_59

def optimizedBody745_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_30 optimizedBody745_60

def optimizedBody745_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_29 optimizedBody745_61

def optimizedBody745_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_62

def optimizedBody745_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_28 optimizedBody745_63

def optimizedBody745_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_24 optimizedBody745_64

def optimizedBody745_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_65

def optimizedBody745_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_66

def optimizedBody745_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_23 optimizedBody745_67

def optimizedBody745_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_16 optimizedBody745_68

def optimizedBody745_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_15 optimizedBody745_69

def optimizedBody745_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_14 optimizedBody745_70

def optimizedBody745_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_13 optimizedBody745_71

def optimizedBody745_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_8 optimizedBody745_72

def optimizedBody745_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_7 optimizedBody745_73

def optimizedBody745_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_2 optimizedBody745_74

def optimizedBody745_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_6 optimizedBody745_75

def optimizedBody745_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_2 optimizedBody745_76

def optimizedBody745_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_5 optimizedBody745_77

def optimizedBody745_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_2 optimizedBody745_78

def optimizedBody745_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_4 optimizedBody745_79

def optimizedBody745_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_2 optimizedBody745_80

def optimizedBody745_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_3 optimizedBody745_81

def optimizedBody745_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_2 optimizedBody745_82

def optimizedBody745_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_1 optimizedBody745_83

def optimizedBody745_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_0 optimizedBody745_84

def oracle745 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 7))
              7
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 7
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
              0 (Flapjack.Spt.ls 7)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
              7 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 7
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              1 (Flapjack.Spt.ls 5))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 6))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 6
                (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
def optimized745 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(745, 2, optimizedBody745_85)
theorem optimize745_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source745, oracle745) = optimized745 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize745_eq
end InitECandidate.Proofs.WordStages
