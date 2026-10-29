import InitECandidate.Proofs.WordStages.Optimize694
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source710
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody710_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0)]

def optimizedBody710_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (8, 8), (10, 10), (0, 2), (6, 6), (4, 4), (44, 44)]

def optimizedBody710_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody710_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody710_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_2 optimizedBody710_3

def optimizedBody710_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_1, 710, 2)) (some 708) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody710_4, 710, 3))

def optimizedBody710_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody710_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody710_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody710_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody710_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody710_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody710_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody710_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody710_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 12), (48, 10), (50, 4), (52, 2), (54, 8), (56, 6)]

def optimizedBody710_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (28, 2), (8, 8), (6, 6), (12, 12), (10, 10), (14, 14), (0, 44), (26, 46), (24, 48), (18, 50), (16, 52),
    (22, 54), (20, 56)]

def optimizedBody710_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (26, 46), (24, 48), (18, 50), (16, 52), (22, 54), (20, 56)]

def optimizedBody710_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_16 optimizedBody710_3

def optimizedBody710_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_15, 710, 4)) (some 709) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody710_17, 710, 5))

def optimizedBody710_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody710_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody710_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 28), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody710_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12]

def optimizedBody710_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_21 optimizedBody710_22

def optimizedBody710_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_6 optimizedBody710_23

def optimizedBody710_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody710_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody710_24 optimizedBody710_25

def optimizedBody710_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 16), (4, 18), (6, 20), (8, 22), (10, 24), (12, 26)]

def optimizedBody710_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_27 optimizedBody710_22

def optimizedBody710_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_6 optimizedBody710_28

def optimizedBody710_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_6 optimizedBody710_29

def optimizedBody710_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_26 optimizedBody710_30

def optimizedBody710_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_20 optimizedBody710_31

def optimizedBody710_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_19 optimizedBody710_32

def optimizedBody710_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_6 optimizedBody710_33

def optimizedBody710_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_18 optimizedBody710_34

def optimizedBody710_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_14 optimizedBody710_35

def optimizedBody710_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_36

def optimizedBody710_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_12 optimizedBody710_37

def optimizedBody710_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_11 optimizedBody710_38

def optimizedBody710_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_10 optimizedBody710_39

def optimizedBody710_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_9 optimizedBody710_40

def optimizedBody710_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_8 optimizedBody710_41

def optimizedBody710_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_7 optimizedBody710_42

def optimizedBody710_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_6 optimizedBody710_43

def optimizedBody710_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_5 optimizedBody710_44

def optimizedBody710_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_0 optimizedBody710_45

def oracle710 : Option (Spt Nat) :=
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
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 10))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 12))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 1)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 11))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))))
def optimized710 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(710, 13, optimizedBody710_46)
theorem optimize710_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source710, oracle710) = optimized710 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize710_eq
end InitECandidate.Proofs.WordStages
