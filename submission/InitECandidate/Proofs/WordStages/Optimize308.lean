import InitECandidate.Proofs.WordStages.Optimize292
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source308
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody308_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody308_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody308_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody308_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (4, 46), (6, 48)]

def optimizedBody308_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (6, 48)]

def optimizedBody308_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody308_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_4 optimizedBody308_5

def optimizedBody308_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody308_3, 308, 2)) (some 68) ([2]) (some (2, optimizedBody308_6, 308, 3))

def optimizedBody308_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody308_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody308_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody308_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody308_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody308_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody308_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody308_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody308_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody308_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_15 optimizedBody308_16

def optimizedBody308_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_14 optimizedBody308_17

def optimizedBody308_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_13 optimizedBody308_18

def optimizedBody308_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_12 optimizedBody308_19

def optimizedBody308_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_11 optimizedBody308_20

def optimizedBody308_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_10 optimizedBody308_21

def optimizedBody308_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_9 optimizedBody308_22

def optimizedBody308_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_8 optimizedBody308_23

def optimizedBody308_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_7 optimizedBody308_24

def optimizedBody308_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_2 optimizedBody308_25

def optimizedBody308_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_1 optimizedBody308_26

def optimizedBody308_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody308_0 optimizedBody308_27

def oracle308 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 2 Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))
def optimized308 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(308, 3, optimizedBody308_28)
theorem optimize308_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source308, oracle308) = optimized308 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize308_eq
end InitECandidate.Proofs.WordStages
