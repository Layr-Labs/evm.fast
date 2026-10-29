import InitECandidate.Proofs.WordStages.Optimize309
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source325
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody325_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody325_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody325_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody325_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody325_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody325_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody325_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody325_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8), (4, 4)]

def optimizedBody325_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody325_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_7 optimizedBody325_8

def optimizedBody325_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_6 optimizedBody325_9

def optimizedBody325_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_5 optimizedBody325_10

def optimizedBody325_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_11

def optimizedBody325_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 2)]

def optimizedBody325_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 4) optimizedBody325_12 optimizedBody325_13

def optimizedBody325_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody325_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody325_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody325_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 6)]

def optimizedBody325_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46)]

def optimizedBody325_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46)]

def optimizedBody325_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody325_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_20 optimizedBody325_21

def optimizedBody325_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody325_19, 325, 2)) (some 286) ([2]) (some (2, optimizedBody325_22, 325, 3))

def optimizedBody325_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6)]

def optimizedBody325_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_24

def optimizedBody325_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_23 optimizedBody325_25

def optimizedBody325_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_18 optimizedBody325_26

def optimizedBody325_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_17 optimizedBody325_27

def optimizedBody325_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_28

def optimizedBody325_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (6, 6)]

def optimizedBody325_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_30

def optimizedBody325_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody325_29 optimizedBody325_31

def optimizedBody325_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 6)]

def optimizedBody325_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (0, 46)]

def optimizedBody325_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody325_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_35 optimizedBody325_21

def optimizedBody325_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody325_34, 325, 4)) (some 324) ([2]) (some (2, optimizedBody325_36, 325, 5))

def optimizedBody325_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody325_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody325_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody325_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody325_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2, 4]

def optimizedBody325_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_41 optimizedBody325_42

def optimizedBody325_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_40 optimizedBody325_43

def optimizedBody325_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_38 optimizedBody325_44

def optimizedBody325_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_39 optimizedBody325_45

def optimizedBody325_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_38 optimizedBody325_46

def optimizedBody325_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_47

def optimizedBody325_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_37 optimizedBody325_48

def optimizedBody325_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_33 optimizedBody325_49

def optimizedBody325_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_50

def optimizedBody325_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_32 optimizedBody325_51

def optimizedBody325_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_3 optimizedBody325_52

def optimizedBody325_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_16 optimizedBody325_53

def optimizedBody325_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_15 optimizedBody325_54

def optimizedBody325_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_55

def optimizedBody325_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_4 optimizedBody325_56

def optimizedBody325_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_14 optimizedBody325_57

def optimizedBody325_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_3 optimizedBody325_58

def optimizedBody325_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_2 optimizedBody325_59

def optimizedBody325_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_1 optimizedBody325_60

def optimizedBody325_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody325_0 optimizedBody325_61

def oracle325 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln))
            4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22)) 1 Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 4 Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 3)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
def optimized325 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(325, 2, optimizedBody325_62)
theorem optimize325_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source325, oracle325) = optimized325 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize325_eq
end InitECandidate.Proofs.WordStages
