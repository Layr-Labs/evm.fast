import InitECandidate.Proofs.WordStages.Optimize199
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source215
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody215_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody215_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 18446744073709551615#64)

def optimizedBody215_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 18446744073709551614#64)

def optimizedBody215_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 13451932020343611451#64)

def optimizedBody215_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 13822214165235122497#64)

def optimizedBody215_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22),
    (24, 24)]

def optimizedBody215_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 136) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody215_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_5 optimizedBody215_6

def optimizedBody215_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_4 optimizedBody215_7

def optimizedBody215_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_3 optimizedBody215_8

def optimizedBody215_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_2 optimizedBody215_9

def optimizedBody215_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_1 optimizedBody215_10

def optimizedBody215_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody215_0 optimizedBody215_11

def oracle215 : Option (Spt Nat) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))))
      Flapjack.Spt.ln))
def optimized215 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(215, 9, optimizedBody215_12)
theorem optimize215_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source215, oracle215) = optimized215 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize215_eq
end InitECandidate.Proofs.WordStages
