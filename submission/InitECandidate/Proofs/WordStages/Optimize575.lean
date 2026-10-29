import InitECandidate.Proofs.WordStages.Optimize559
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source575
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody575_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody575_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody575_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody575_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody575_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody575_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody575_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_4 optimizedBody575_5

def optimizedBody575_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody575_3, 575, 2)) (some 470) ([2]) (some (2, optimizedBody575_6, 575, 3))

def optimizedBody575_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody575_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody575_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody575_9, 575, 4)) (some 572) ([]) (some (2, optimizedBody575_6, 575, 5))

def optimizedBody575_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody575_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody575_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 8), (6, 6), (44, 44)]

def optimizedBody575_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody575_13, 575, 6)) (some 280) ([2]) (some (2, optimizedBody575_6, 575, 7))

def optimizedBody575_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody575_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody575_3, 575, 8)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody575_6, 575, 9))

def optimizedBody575_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody575_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody575_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody575_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_19 optimizedBody575_5

def optimizedBody575_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody575_18, 575, 10)) (some 490) ([2]) (some (2, optimizedBody575_20, 575, 11))

def optimizedBody575_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody575_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody575_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody575_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_23 optimizedBody575_24

def optimizedBody575_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_22 optimizedBody575_25

def optimizedBody575_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_8 optimizedBody575_26

def optimizedBody575_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_21 optimizedBody575_27

def optimizedBody575_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_4 optimizedBody575_28

def optimizedBody575_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_17 optimizedBody575_29

def optimizedBody575_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_8 optimizedBody575_30

def optimizedBody575_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_16 optimizedBody575_31

def optimizedBody575_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_15 optimizedBody575_32

def optimizedBody575_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_8 optimizedBody575_33

def optimizedBody575_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_14 optimizedBody575_34

def optimizedBody575_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_4 optimizedBody575_35

def optimizedBody575_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_12 optimizedBody575_36

def optimizedBody575_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_11 optimizedBody575_37

def optimizedBody575_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_8 optimizedBody575_38

def optimizedBody575_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_10 optimizedBody575_39

def optimizedBody575_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_3 optimizedBody575_40

def optimizedBody575_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_8 optimizedBody575_41

def optimizedBody575_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_7 optimizedBody575_42

def optimizedBody575_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_2 optimizedBody575_43

def optimizedBody575_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_1 optimizedBody575_44

def optimizedBody575_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody575_0 optimizedBody575_45

def oracle575 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized575 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(575, 1, optimizedBody575_46)
theorem optimize575_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source575, oracle575) = optimized575 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize575_eq
end InitECandidate.Proofs.WordStages
