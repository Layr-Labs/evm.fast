import InitECandidate.Proofs.WordStages.Optimize689
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source705
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody705_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (12, 12), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody705_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody705_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody705_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody705_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody705_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody705_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody705_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody705_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody705_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody705_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody705_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody705_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody705_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody705_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_13

def optimizedBody705_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_12 optimizedBody705_14

def optimizedBody705_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_11 optimizedBody705_15

def optimizedBody705_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody705_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody705_16 optimizedBody705_17

def optimizedBody705_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody705_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_19 optimizedBody705_14

def optimizedBody705_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_11 optimizedBody705_20

def optimizedBody705_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_11 optimizedBody705_21

def optimizedBody705_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_18 optimizedBody705_22

def optimizedBody705_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_10 optimizedBody705_23

def optimizedBody705_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_9 optimizedBody705_24

def optimizedBody705_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_8 optimizedBody705_25

def optimizedBody705_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_7 optimizedBody705_26

def optimizedBody705_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_6 optimizedBody705_27

def optimizedBody705_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_5 optimizedBody705_28

def optimizedBody705_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_4 optimizedBody705_29

def optimizedBody705_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_3 optimizedBody705_30

def optimizedBody705_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_2 optimizedBody705_31

def optimizedBody705_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_1 optimizedBody705_32

def optimizedBody705_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody705_0 optimizedBody705_33

def oracle705 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 0
            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def optimized705 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(705, 7, optimizedBody705_34)
theorem optimize705_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source705, oracle705) = optimized705 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize705_eq
end InitECandidate.Proofs.WordStages
