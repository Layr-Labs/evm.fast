import InitECandidate.Proofs.WordStages.Optimize695
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source711
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody711_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0)]

def optimizedBody711_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (12, 12), (8, 8), (10, 10), (26, 2), (6, 6), (4, 4), (28, 44)]

def optimizedBody711_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44)]

def optimizedBody711_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody711_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_2 optimizedBody711_3

def optimizedBody711_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody711_1, 711, 2)) (some 709) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody711_4, 711, 3))

def optimizedBody711_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody711_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (26, 26)]

def optimizedBody711_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody711_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 26), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody711_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2, 4, 6, 8, 10, 12]

def optimizedBody711_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_9 optimizedBody711_10

def optimizedBody711_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_6 optimizedBody711_11

def optimizedBody711_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(24, 12), (22, 10), (16, 4), (0, 26), (20, 8), (18, 6)]

def optimizedBody711_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody711_12 optimizedBody711_13

def optimizedBody711_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 24), (10, 22), (8, 20), (6, 18), (4, 16), (2, 0)]

def optimizedBody711_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody711_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody711_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody711_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody711_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody711_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody711_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 28)]

def optimizedBody711_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 2), (8, 8), (6, 6), (12, 12), (10, 10), (0, 44)]

def optimizedBody711_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody711_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_24 optimizedBody711_3

def optimizedBody711_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody711_23, 711, 4)) (some 708) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody711_25, 711, 5))

def optimizedBody711_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody711_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12]

def optimizedBody711_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_27 optimizedBody711_28

def optimizedBody711_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_6 optimizedBody711_29

def optimizedBody711_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_26 optimizedBody711_30

def optimizedBody711_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_22 optimizedBody711_31

def optimizedBody711_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_21 optimizedBody711_32

def optimizedBody711_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_20 optimizedBody711_33

def optimizedBody711_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_19 optimizedBody711_34

def optimizedBody711_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_18 optimizedBody711_35

def optimizedBody711_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_17 optimizedBody711_36

def optimizedBody711_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_16 optimizedBody711_37

def optimizedBody711_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_15 optimizedBody711_38

def optimizedBody711_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_6 optimizedBody711_39

def optimizedBody711_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_6 optimizedBody711_40

def optimizedBody711_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_14 optimizedBody711_41

def optimizedBody711_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_8 optimizedBody711_42

def optimizedBody711_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_7 optimizedBody711_43

def optimizedBody711_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_6 optimizedBody711_44

def optimizedBody711_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_5 optimizedBody711_45

def optimizedBody711_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody711_0 optimizedBody711_46

def oracle711 : Option (Spt Nat) :=
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
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 14 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized711 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(711, 13, optimizedBody711_47)
theorem optimize711_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source711, oracle711) = optimized711 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize711_eq
end InitECandidate.Proofs.WordStages
