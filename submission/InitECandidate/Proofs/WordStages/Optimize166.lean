import InitECandidate.Proofs.WordStages.Optimize150
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source166
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody166_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody166_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (6, 6), (44, 44), (0, 46)]

def optimizedBody166_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody166_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody166_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_2 optimizedBody166_3

def optimizedBody166_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody166_1, 166, 2)) (some 163) ([2, 4]) (some (2, optimizedBody166_4, 166, 3))

def optimizedBody166_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody166_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody166_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody166_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody166_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody166_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 8), (48, 4)]

def optimizedBody166_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (8, 46), (4, 48)]

def optimizedBody166_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (4, 48)]

def optimizedBody166_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_13 optimizedBody166_3

def optimizedBody166_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody166_12, 166, 4)) (some 165) ([2, 4]) (some (2, optimizedBody166_14, 166, 5))

def optimizedBody166_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8), (4, 4)]

def optimizedBody166_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_6 optimizedBody166_16

def optimizedBody166_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_15 optimizedBody166_17

def optimizedBody166_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_11 optimizedBody166_18

def optimizedBody166_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_10 optimizedBody166_19

def optimizedBody166_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_9 optimizedBody166_20

def optimizedBody166_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_6 optimizedBody166_21

def optimizedBody166_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (8, 8), (4, 4)]

def optimizedBody166_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_6 optimizedBody166_23

def optimizedBody166_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody166_22 optimizedBody166_24

def optimizedBody166_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def optimizedBody166_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody166_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody166_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody166_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_28 optimizedBody166_29

def optimizedBody166_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_27 optimizedBody166_30

def optimizedBody166_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_26 optimizedBody166_31

def optimizedBody166_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_6 optimizedBody166_32

def optimizedBody166_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_25 optimizedBody166_33

def optimizedBody166_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_8 optimizedBody166_34

def optimizedBody166_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_7 optimizedBody166_35

def optimizedBody166_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_6 optimizedBody166_36

def optimizedBody166_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_5 optimizedBody166_37

def optimizedBody166_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody166_0 optimizedBody166_38

def oracle166 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 2)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized166 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(166, 3, optimizedBody166_39)
theorem optimize166_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source166, oracle166) = optimized166 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize166_eq
end InitECandidate.Proofs.WordStages
