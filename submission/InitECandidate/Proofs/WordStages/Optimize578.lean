import InitECandidate.Proofs.WordStages.Optimize562
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source578
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody578_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody578_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody578_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody578_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody578_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody578_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody578_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_4 optimizedBody578_5

def optimizedBody578_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_3, 578, 2)) (some 470) ([2]) (some (2, optimizedBody578_6, 578, 3))

def optimizedBody578_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody578_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody578_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_9, 578, 4)) (some 572) ([]) (some (2, optimizedBody578_6, 578, 5))

def optimizedBody578_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody578_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 80#64))

def optimizedBody578_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_3, 578, 6)) (some 477) ([2]) (some (2, optimizedBody578_6, 578, 7))

def optimizedBody578_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody578_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody578_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody578_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_16 optimizedBody578_5

def optimizedBody578_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_15, 578, 8)) (some 490) ([2]) (some (2, optimizedBody578_17, 578, 9))

def optimizedBody578_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody578_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody578_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody578_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_20 optimizedBody578_21

def optimizedBody578_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_19 optimizedBody578_22

def optimizedBody578_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_8 optimizedBody578_23

def optimizedBody578_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_18 optimizedBody578_24

def optimizedBody578_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_4 optimizedBody578_25

def optimizedBody578_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_14 optimizedBody578_26

def optimizedBody578_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_8 optimizedBody578_27

def optimizedBody578_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_13 optimizedBody578_28

def optimizedBody578_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_4 optimizedBody578_29

def optimizedBody578_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_12 optimizedBody578_30

def optimizedBody578_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_11 optimizedBody578_31

def optimizedBody578_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_8 optimizedBody578_32

def optimizedBody578_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_10 optimizedBody578_33

def optimizedBody578_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_3 optimizedBody578_34

def optimizedBody578_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_8 optimizedBody578_35

def optimizedBody578_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_7 optimizedBody578_36

def optimizedBody578_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_2 optimizedBody578_37

def optimizedBody578_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_1 optimizedBody578_38

def optimizedBody578_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_0 optimizedBody578_39

def oracle578 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized578 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(578, 1, optimizedBody578_40)
theorem optimize578_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source578, oracle578) = optimized578 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize578_eq
end InitECandidate.Proofs.WordStages
