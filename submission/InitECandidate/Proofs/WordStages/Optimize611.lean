import InitECandidate.Proofs.WordStages.Optimize595
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source611
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody611_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0)]

def optimizedBody611_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 168#64))

def optimizedBody611_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody611_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 264#64))

def optimizedBody611_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody611_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody611_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody611_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody611_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_6 optimizedBody611_7

def optimizedBody611_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody611_5, 611, 2)) (some 194) ([2, 4]) (some (2, optimizedBody611_8, 611, 3))

def optimizedBody611_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody611_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody611_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 176#64))

def optimizedBody611_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 272#64))

def optimizedBody611_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody611_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody611_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody611_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_16 optimizedBody611_7

def optimizedBody611_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody611_15, 611, 4)) (some 194) ([2, 4]) (some (2, optimizedBody611_17, 611, 5))

def optimizedBody611_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody611_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody611_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody611_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_20 optimizedBody611_21

def optimizedBody611_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_19 optimizedBody611_22

def optimizedBody611_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_10 optimizedBody611_23

def optimizedBody611_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_18 optimizedBody611_24

def optimizedBody611_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_14 optimizedBody611_25

def optimizedBody611_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_13 optimizedBody611_26

def optimizedBody611_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_11 optimizedBody611_27

def optimizedBody611_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_12 optimizedBody611_28

def optimizedBody611_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_11 optimizedBody611_29

def optimizedBody611_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_10 optimizedBody611_30

def optimizedBody611_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_9 optimizedBody611_31

def optimizedBody611_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_4 optimizedBody611_32

def optimizedBody611_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_3 optimizedBody611_33

def optimizedBody611_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_2 optimizedBody611_34

def optimizedBody611_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_1 optimizedBody611_35

def optimizedBody611_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody611_0 optimizedBody611_36

def oracle611 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 2)) 3 Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 23))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
def optimized611 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(611, 2, optimizedBody611_37)
theorem optimize611_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source611, oracle611) = optimized611 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize611_eq
end InitECandidate.Proofs.WordStages
