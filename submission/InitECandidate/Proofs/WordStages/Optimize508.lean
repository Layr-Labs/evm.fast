import InitECandidate.Proofs.WordStages.Optimize492
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source508
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody508_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody508_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody508_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody508_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody508_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_2 optimizedBody508_3

def optimizedBody508_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody508_1, 508, 2)) (some 475) ([]) (some (2, optimizedBody508_4, 508, 3))

def optimizedBody508_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody508_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 8), (54, 4), (56, 0), (58, 6)]

def optimizedBody508_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (8, 8), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody508_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (56, 56), (58, 58)]

def optimizedBody508_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_9 optimizedBody508_3

def optimizedBody508_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody508_8, 508, 4)) (some 475) ([]) (some (2, optimizedBody508_10, 508, 5))

def optimizedBody508_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody508_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 4), (48, 0), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 8)]

def optimizedBody508_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (10, 48), (8, 50), (14, 52), (4, 54), (0, 56), (6, 58), (16, 60)]

def optimizedBody508_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (10, 48), (8, 50), (14, 52), (4, 54), (0, 56), (6, 58), (16, 60)]

def optimizedBody508_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_15 optimizedBody508_3

def optimizedBody508_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody508_14, 508, 6)) (some 470) ([2]) (some (2, optimizedBody508_16, 508, 7))

def optimizedBody508_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody508_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody508_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody508_19, 508, 8)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody508_4, 508, 9))

def optimizedBody508_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody508_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody508_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody508_22, 508, 10)) (some 478) ([2]) (some (2, optimizedBody508_4, 508, 11))

def optimizedBody508_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody508_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody508_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody508_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_26 optimizedBody508_3

def optimizedBody508_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody508_25, 508, 12)) (some 490) ([2]) (some (2, optimizedBody508_27, 508, 13))

def optimizedBody508_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody508_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody508_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody508_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_30 optimizedBody508_31

def optimizedBody508_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_29 optimizedBody508_32

def optimizedBody508_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_6 optimizedBody508_33

def optimizedBody508_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_28 optimizedBody508_34

def optimizedBody508_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_2 optimizedBody508_35

def optimizedBody508_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_24 optimizedBody508_36

def optimizedBody508_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_6 optimizedBody508_37

def optimizedBody508_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_23 optimizedBody508_38

def optimizedBody508_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_21 optimizedBody508_39

def optimizedBody508_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_6 optimizedBody508_40

def optimizedBody508_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_20 optimizedBody508_41

def optimizedBody508_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_18 optimizedBody508_42

def optimizedBody508_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_6 optimizedBody508_43

def optimizedBody508_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_17 optimizedBody508_44

def optimizedBody508_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_13 optimizedBody508_45

def optimizedBody508_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_12 optimizedBody508_46

def optimizedBody508_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_6 optimizedBody508_47

def optimizedBody508_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_11 optimizedBody508_48

def optimizedBody508_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_7 optimizedBody508_49

def optimizedBody508_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_6 optimizedBody508_50

def optimizedBody508_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_5 optimizedBody508_51

def optimizedBody508_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody508_0 optimizedBody508_52

def oracle508 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 8)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))))
def optimized508 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(508, 1, optimizedBody508_53)
theorem optimize508_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source508, oracle508) = optimized508 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize508_eq
end InitECandidate.Proofs.WordStages
