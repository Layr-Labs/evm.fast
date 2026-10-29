import InitECandidate.Proofs.WordStages.Optimize708
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source724
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody724_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0)]

def optimizedBody724_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 10), (6, 6), (8, 8), (12, 12), (14, 2), (44, 44)]

def optimizedBody724_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody724_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody724_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_2 optimizedBody724_3

def optimizedBody724_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody724_1, 724, 2)) (some 717) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody724_4, 724, 3))

def optimizedBody724_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody724_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 12), (22, 10), (20, 8), (18, 6), (16, 4), (14, 14)]

def optimizedBody724_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 936899308823769933#64)

def optimizedBody724_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 2706051889235351147#64)

def optimizedBody724_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12843041017062132063#64)

def optimizedBody724_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12941209323636816658#64)

def optimizedBody724_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1105070755758604287#64)

def optimizedBody724_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 15924587544893707605#64)

def optimizedBody724_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44)]

def optimizedBody724_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody724_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody724_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_16 optimizedBody724_3

def optimizedBody724_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody724_15, 724, 4)) (some 707) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody724_17, 724, 5))

def optimizedBody724_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody724_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody724_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_19 optimizedBody724_20

def optimizedBody724_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_6 optimizedBody724_21

def optimizedBody724_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_18 optimizedBody724_22

def optimizedBody724_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_14 optimizedBody724_23

def optimizedBody724_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_13 optimizedBody724_24

def optimizedBody724_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_12 optimizedBody724_25

def optimizedBody724_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_11 optimizedBody724_26

def optimizedBody724_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_10 optimizedBody724_27

def optimizedBody724_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_9 optimizedBody724_28

def optimizedBody724_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_8 optimizedBody724_29

def optimizedBody724_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_7 optimizedBody724_30

def optimizedBody724_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_6 optimizedBody724_31

def optimizedBody724_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_5 optimizedBody724_32

def optimizedBody724_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody724_0 optimizedBody724_33

def oracle724 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 6)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 7)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 5)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized724 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(724, 7, optimizedBody724_34)
theorem optimize724_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source724, oracle724) = optimized724 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize724_eq
end InitECandidate.Proofs.WordStages
